import 'package:flutter/material.dart';
import 'package:invoiceninja/data/models/models.dart';
import 'package:invoiceninja/redux/client/client_actions.dart';
import 'package:invoiceninja/redux/ui/ui_actions.dart';
import 'package:invoiceninja/ui/product/edit/product_edit_vm.dart';
import 'package:redux/redux.dart';
import 'package:invoiceninja/redux/product/product_actions.dart';
import 'package:invoiceninja/redux/app/app_state.dart';
import 'package:invoiceninja/data/repositories/product_repository.dart';

List<Middleware<AppState>> createStoreProductsMiddleware([
  ProductRepository repository = const ProductRepository(),
]) {
  final loadProducts = _loadProducts(repository);
  final saveProduct = _saveProduct(repository);
  final archiveProduct = _archiveProduct(repository);
  final deleteProduct = _deleteProduct(repository);
  final restoreProduct = _restoreProduct(repository);
  final editProduct = _editProduct();

  return [
    TypedMiddleware<AppState, LoadProductsAction>(loadProducts),
    TypedMiddleware<AppState, SaveProductRequest>(saveProduct),
    TypedMiddleware<AppState, ArchiveProductRequest>(archiveProduct),
    TypedMiddleware<AppState, DeleteProductRequest>(deleteProduct),
    TypedMiddleware<AppState, RestoreProductRequest>(restoreProduct),
    TypedMiddleware<AppState, EditProductAction>(editProduct),
  ];
}

Middleware<AppState> _editProduct() {
  return (Store<AppState> store, action, NextDispatcher next) {
    next(action);

    store.dispatch(UpdateCurrentRoute(ProductEditScreen.route));
    Navigator.of(action.context).pushReplacementNamed(ProductEditScreen.route);
  };
}

Middleware<AppState> _archiveProduct(ProductRepository repository) {
  return (Store<AppState> store, action, NextDispatcher next) {
    var origProduct = store.state.productState.map[action.productId];
    repository
        .saveData(store.state.selectedCompany, store.state.authState,
            origProduct, EntityAction.archive)
        .then((product) {
      store.dispatch(ArchiveProductSuccess(product));
      if (action.completer != null) {
        action.completer.complete(null);
      }
    }).catchError((error) {
      print(error);
      store.dispatch(ArchiveProductFailure(origProduct));
    });

    next(action);
  };
}

Middleware<AppState> _deleteProduct(ProductRepository repository) {
  return (Store<AppState> store, action, NextDispatcher next) {
    var origProduct = store.state.productState.map[action.productId];
    repository
        .saveData(store.state.selectedCompany, store.state.authState,
            origProduct, EntityAction.delete)
        .then((product) {
      store.dispatch(DeleteProductSuccess(product));
      if (action.completer != null) {
        action.completer.complete(null);
      }
    }).catchError((error) {
      print(error);
      store.dispatch(DeleteProductFailure(origProduct));
    });

    next(action);
  };
}

Middleware<AppState> _restoreProduct(ProductRepository repository) {
  return (Store<AppState> store, action, NextDispatcher next) {
    var origProduct = store.state.productState.map[action.productId];
    repository
        .saveData(store.state.selectedCompany, store.state.authState,
            origProduct, EntityAction.restore)
        .then((product) {
      store.dispatch(RestoreProductSuccess(product));
      if (action.completer != null) {
        action.completer.complete(null);
      }
    }).catchError((error) {
      print(error);
      store.dispatch(RestoreProductFailure(origProduct));
    });

    next(action);
  };
}

Middleware<AppState> _saveProduct(ProductRepository repository) {
  return (Store<AppState> store, action, NextDispatcher next) {
    repository
        .saveData(
            store.state.selectedCompany, store.state.authState, action.product)
        .then((product) {
      if (action.product.isNew()) {
        store.dispatch(AddProductSuccess(product));
      } else {
        store.dispatch(SaveProductSuccess(product));
      }
      action.completer.complete(null);
    }).catchError((error) {
      print(error);
      store.dispatch(SaveProductFailure(error));
    });

    next(action);
  };
}

Middleware<AppState> _loadProducts(ProductRepository repository) {
  return (Store<AppState> store, action, NextDispatcher next) {
    AppState state = store.state;

    if (!state.productState.isStale && !action.force) {
      next(action);
      return;
    }

    if (state.isLoading) {
      next(action);
      return;
    }

    store.dispatch(LoadProductsRequest());
    repository.loadList(state.selectedCompany, state.authState).then((data) {
      store.dispatch(LoadProductsSuccess(data));
      if (action.completer != null) {
        action.completer.complete(null);
      }
    }).catchError((error) => store.dispatch(LoadProductsFailure(error)));

    next(action);
  };
}
