import 'package:flutter_redux/flutter_redux.dart';
import 'package:invoiceninja_flutter/data/models/invoice_model.dart';
import 'package:invoiceninja_flutter/data/models/models.dart';
import 'package:invoiceninja_flutter/redux/app/app_state.dart';
import 'package:invoiceninja_flutter/redux/document/document_selectors.dart';
import 'package:invoiceninja_flutter/redux/product/product_selectors.dart';
import 'package:invoiceninja_flutter/redux/task/task_selectors.dart';
import 'package:invoiceninja_flutter/redux/expense/expense_selectors.dart';
import 'package:flutter/material.dart';
import 'package:invoiceninja_flutter/ui/expense/expense_list_item.dart';
import 'package:invoiceninja_flutter/ui/product/product_list_item.dart';
import 'package:invoiceninja_flutter/data/models/entities.dart';
import 'package:invoiceninja_flutter/ui/task/task_list_item.dart';
import 'package:invoiceninja_flutter/utils/localization.dart';

class InvoiceItemSelector extends StatefulWidget {
  const InvoiceItemSelector({
    @required this.clientId,
    this.onItemsSelected,
    this.excluded,
  });

  final Function(List<InvoiceItemEntity>, [int]) onItemsSelected;
  final int clientId;
  final List<BaseEntity> excluded;

  @override
  _InvoiceItemSelectorState createState() => new _InvoiceItemSelectorState();
}

class _InvoiceItemSelectorState extends State<InvoiceItemSelector>
    with SingleTickerProviderStateMixin {
  String _filter;
  int _filterClientId;
  TabController _tabController;
  final List<BaseEntity> _selected = [];

  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filterClientId = widget.clientId;
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _textController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _addBlankItem() {
    widget.onItemsSelected([InvoiceItemEntity()]);
    Navigator.pop(context);
  }

  void _onItemsSelected(BuildContext context) {
    final List<InvoiceItemEntity> items = [];
    final state = StoreProvider.of<AppState>(context).state;
    final company = state.selectedCompany;

    _selected.forEach((entity) {
      if (entity.entityType == EntityType.product) {
        final product = entity as ProductEntity;
        if (state.selectedCompany.fillProducts ?? true) {
          items.add(
              convertProductToInvoiceItem(product: product, context: context));
        } else {
          items.add(InvoiceItemEntity().rebuild((b) => b
            ..productKey = product.productKey
            ..qty = 1));
        }
      } else if (entity.entityType == EntityType.task) {
        final task = entity as TaskEntity;
        items.add(convertTaskToInvoiceItem(task: task, context: context));
      } else if (entity.entityType == EntityType.expense) {
        final expense = entity as ExpenseEntity;
        items.add(convertExpenseToInvoiceItem(
            expense: expense, categoryMap: company.expenseCategoryMap));
      }
    });

    _updateClientId();

    widget.onItemsSelected(items, _filterClientId);
    Navigator.pop(context);
  }

  void _toggleEntity(BaseEntity entity) {
    setState(() {
      _filter = '';
      _textController.text = '';
      if (_selected.contains(entity)) {
        _selected.remove(entity);
      } else {
        _selected.add(entity);
      }

      _updateClientId();
    });
  }

  void _updateClientId() {
    final selected = _selected.firstWhere(
        (entity) =>
            entity is BelongsToClient &&
            (((entity as BelongsToClient).clientId ?? 0) > 0),
        orElse: () => null);

    if (selected != null) {
      _filterClientId = (selected as BelongsToClient).clientId;
    } else if ((widget.clientId ?? 0) == 0) {
      _filterClientId = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context);
    final state = StoreProvider.of<AppState>(context).state;
    final company = state.selectedCompany;
    final showTabBar = company.isModuleEnabled(EntityType.task) ||
        company.isModuleEnabled(EntityType.expense);

    Widget _headerRow() {
      return Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Icon(Icons.search),
          ),
          Expanded(
            child: TextField(
              controller: _textController,
              onChanged: (value) {
                setState(() {
                  _filter = value;
                });
              },
              autofocus: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: _selected.isEmpty
                    ? localization.filter
                    : localization.countSelected
                        .replaceFirst(':count', '${_selected.length}'),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  if (_textController.text.isNotEmpty) {
                    setState(() {
                      _filter = _textController.text = '';
                    });
                  } else {
                    Navigator.pop(context);
                  }
                },
              ),
              _selected.isNotEmpty
                  ? IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () => _onItemsSelected(context),
                    )
                  : IconButton(
                      icon: Icon(Icons.add_circle_outline),
                      onPressed: () => _addBlankItem(),
                    ),
            ],
          )
        ],
      );
    }

    Widget _productList() {
      final matches =
          memoizedProductList(state.productState.map).where((entityId) {
        final entity = state.productState.map[entityId];
        return entity.isActive && entity.matchesFilter(_filter);
      }).toList();

      return ListView.builder(
        shrinkWrap: true,
        itemCount: matches.length,
        itemBuilder: (BuildContext context, int index) {
          final int entityId = matches[index];
          final product = state.productState.map[entityId];
          return ProductListItem(
            onCheckboxChanged: (checked) => _toggleEntity(product),
            isChecked: _selected.contains(product),
            product: product,
            user: state.user,
            filter: _filter,
            onTap: () {
              if (_selected.isNotEmpty) {
                _toggleEntity(product);
              } else {
                _selected.add(product);
                _onItemsSelected(context);
              }
            },
          );
        },
      );
    }

    Widget _taskList() {
      final matches = memoizedTaskList(state.taskState.map, _filterClientId)
          .where((entityId) {
        final task = state.taskState.map[entityId];
        if (widget.excluded != null && widget.excluded.contains(task)) {
          return false;
        }
        return task.matchesFilter(_filter);
      }).toList();

      return ListView.builder(
        shrinkWrap: true,
        itemCount: matches.length,
        itemBuilder: (BuildContext context, int index) {
          final int entityId = matches[index];
          final task = state.taskState.map[entityId];
          final project = state.projectState.map[task.projectId];
          final client = state.clientState.map[task.clientId];
          return TaskListItem(
            onCheckboxChanged: (checked) => _toggleEntity(task),
            isChecked: _selected.contains(task),
            project: project,
            task: task,
            client: client,
            onTap: () {
              if (_selected.isNotEmpty) {
                _toggleEntity(task);
              } else {
                _selected.add(task);
                _onItemsSelected(context);
              }
            },
            filter: _filter,
            user: state.selectedCompany.user,
          );
        },
      );
    }

    Widget _expenseList() {
      final matches =
          memoizedClientExpenseList(state.expenseState.map, _filterClientId)
              .where((entityId) {
        final expense = state.expenseState.map[entityId];
        if (widget.excluded != null && widget.excluded.contains(expense)) {
          return false;
        }
        return expense.matchesFilter(_filter);
      }).toList();

      final documentMap = memoizedEntityDocumentMap(
          EntityType.expense, state.documentState.map, state.expenseState.map);

      return ListView.builder(
        shrinkWrap: true,
        itemCount: matches.length,
        itemBuilder: (BuildContext context, int index) {
          final int entityId = matches[index];
          final expense = state.expenseState.map[entityId] ?? ExpenseEntity();
          final vendor = state.vendorState.map[expense.vendorId];
          final client = state.clientState.map[expense.clientId];
          return ExpenseListItem(
            onCheckboxChanged: (checked) => _toggleEntity(expense),
            isChecked: _selected.contains(expense),
            hasDocuments: documentMap[expense.id] == true,
            expense: expense,
            vendor: vendor,
            client: client,
            onTap: () {
              if (_selected.isNotEmpty) {
                _toggleEntity(expense);
              } else {
                _selected.add(expense);
                _onItemsSelected(context);
              }
            },
            filter: _filter,
            user: state.selectedCompany.user,
          );
        },
      );
    }

    final List<Widget> tabs = [
      Tab(text: localization.products),
    ];
    final List<Widget> tabViews = [
      _productList(),
    ];

    if (company.isModuleEnabled(EntityType.task)) {
      tabs.add(Tab(text: localization.tasks));
      tabViews.add(_taskList());
    }

    if (company.isModuleEnabled(EntityType.expense)) {
      tabs.add(Tab(text: localization.expenses));
      tabViews.add(_expenseList());
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        elevation: 4.0,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          _headerRow(),
          showTabBar
              ? TabBar(
                  labelColor: state.uiState.enableDarkMode
                      ? Colors.white
                      : Colors.black,
                  indicatorColor: Theme.of(context).accentColor,
                  controller: _tabController,
                  tabs: tabs,
                )
              : SizedBox(),
          Expanded(
            child: showTabBar
                ? TabBarView(
                    controller: _tabController,
                    children: tabViews,
                  )
                : tabViews.first,
          ),
        ]),
      ),
    );
  }
}
