// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExpenseListResponse> _$expenseListResponseSerializer =
    new _$ExpenseListResponseSerializer();
Serializer<ExpenseItemResponse> _$expenseItemResponseSerializer =
    new _$ExpenseItemResponseSerializer();
Serializer<ExpenseEntity> _$expenseEntitySerializer =
    new _$ExpenseEntitySerializer();
Serializer<ExpenseCategoryEntity> _$expenseCategoryEntitySerializer =
    new _$ExpenseCategoryEntitySerializer();
Serializer<ExpenseStatusEntity> _$expenseStatusEntitySerializer =
    new _$ExpenseStatusEntitySerializer();

class _$ExpenseListResponseSerializer
    implements StructuredSerializer<ExpenseListResponse> {
  @override
  final Iterable<Type> types = const [
    ExpenseListResponse,
    _$ExpenseListResponse
  ];
  @override
  final String wireName = 'ExpenseListResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ExpenseListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ExpenseEntity)])),
    ];

    return result;
  }

  @override
  ExpenseListResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExpenseListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ExpenseEntity)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$ExpenseItemResponseSerializer
    implements StructuredSerializer<ExpenseItemResponse> {
  @override
  final Iterable<Type> types = const [
    ExpenseItemResponse,
    _$ExpenseItemResponse
  ];
  @override
  final String wireName = 'ExpenseItemResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ExpenseItemResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(ExpenseEntity)),
    ];

    return result;
  }

  @override
  ExpenseItemResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExpenseItemResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExpenseEntity)) as ExpenseEntity);
          break;
      }
    }

    return result.build();
  }
}

class _$ExpenseEntitySerializer implements StructuredSerializer<ExpenseEntity> {
  @override
  final Iterable<Type> types = const [ExpenseEntity, _$ExpenseEntity];
  @override
  final String wireName = 'ExpenseEntity';

  @override
  Iterable<Object> serialize(Serializers serializers, ExpenseEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'private_notes',
      serializers.serialize(object.privateNotes,
          specifiedType: const FullType(String)),
      'public_notes',
      serializers.serialize(object.publicNotes,
          specifiedType: const FullType(String)),
      'should_be_invoiced',
      serializers.serialize(object.shouldBeInvoiced,
          specifiedType: const FullType(bool)),
      'invoice_documents',
      serializers.serialize(object.invoiceDocuments,
          specifiedType: const FullType(bool)),
      'transaction_id',
      serializers.serialize(object.transactionId,
          specifiedType: const FullType(String)),
      'transaction_reference',
      serializers.serialize(object.transactionReference,
          specifiedType: const FullType(String)),
      'bank_id',
      serializers.serialize(object.bankId, specifiedType: const FullType(int)),
      'expense_currency_id',
      serializers.serialize(object.expenseCurrencyId,
          specifiedType: const FullType(int)),
      'amount',
      serializers.serialize(object.amount,
          specifiedType: const FullType(double)),
      'expense_date',
      serializers.serialize(object.expenseDate,
          specifiedType: const FullType(String)),
      'payment_date',
      serializers.serialize(object.paymentDate,
          specifiedType: const FullType(String)),
      'exchange_rate',
      serializers.serialize(object.exchangeRate,
          specifiedType: const FullType(double)),
      'invoice_currency_id',
      serializers.serialize(object.invoiceCurrencyId,
          specifiedType: const FullType(int)),
      'payment_type_id',
      serializers.serialize(object.paymentTypeId,
          specifiedType: const FullType(int)),
      'tax_name1',
      serializers.serialize(object.taxName1,
          specifiedType: const FullType(String)),
      'tax_name2',
      serializers.serialize(object.taxName2,
          specifiedType: const FullType(String)),
      'tax_rate1',
      serializers.serialize(object.taxRate1,
          specifiedType: const FullType(double)),
      'tax_rate2',
      serializers.serialize(object.taxRate2,
          specifiedType: const FullType(double)),
      'client_id',
      serializers.serialize(object.clientId,
          specifiedType: const FullType(int)),
      'invoice_id',
      serializers.serialize(object.invoiceId,
          specifiedType: const FullType(int)),
      'vendor_id',
      serializers.serialize(object.vendorId,
          specifiedType: const FullType(int)),
      'custom_value1',
      serializers.serialize(object.customValue1,
          specifiedType: const FullType(String)),
      'custom_value2',
      serializers.serialize(object.customValue2,
          specifiedType: const FullType(String)),
    ];
    if (object.categoryId != null) {
      result
        ..add('expense_category_id')
        ..add(serializers.serialize(object.categoryId,
            specifiedType: const FullType(int)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(int)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(int)));
    }
    if (object.archivedAt != null) {
      result
        ..add('archived_at')
        ..add(serializers.serialize(object.archivedAt,
            specifiedType: const FullType(int)));
    }
    if (object.isDeleted != null) {
      result
        ..add('is_deleted')
        ..add(serializers.serialize(object.isDeleted,
            specifiedType: const FullType(bool)));
    }
    if (object.isOwner != null) {
      result
        ..add('is_owner')
        ..add(serializers.serialize(object.isOwner,
            specifiedType: const FullType(bool)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ExpenseEntity deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExpenseEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'private_notes':
          result.privateNotes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'public_notes':
          result.publicNotes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'should_be_invoiced':
          result.shouldBeInvoiced = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'invoice_documents':
          result.invoiceDocuments = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'transaction_id':
          result.transactionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transaction_reference':
          result.transactionReference = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bank_id':
          result.bankId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'expense_currency_id':
          result.expenseCurrencyId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'expense_category_id':
          result.categoryId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'expense_date':
          result.expenseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'payment_date':
          result.paymentDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'exchange_rate':
          result.exchangeRate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'invoice_currency_id':
          result.invoiceCurrencyId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'payment_type_id':
          result.paymentTypeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tax_name1':
          result.taxName1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tax_name2':
          result.taxName2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tax_rate1':
          result.taxRate1 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'tax_rate2':
          result.taxRate2 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'client_id':
          result.clientId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'invoice_id':
          result.invoiceId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'vendor_id':
          result.vendorId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'custom_value1':
          result.customValue1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'custom_value2':
          result.customValue2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'archived_at':
          result.archivedAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_deleted':
          result.isDeleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_owner':
          result.isOwner = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ExpenseCategoryEntitySerializer
    implements StructuredSerializer<ExpenseCategoryEntity> {
  @override
  final Iterable<Type> types = const [
    ExpenseCategoryEntity,
    _$ExpenseCategoryEntity
  ];
  @override
  final String wireName = 'ExpenseCategoryEntity';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ExpenseCategoryEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(int)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(int)));
    }
    if (object.archivedAt != null) {
      result
        ..add('archived_at')
        ..add(serializers.serialize(object.archivedAt,
            specifiedType: const FullType(int)));
    }
    if (object.isDeleted != null) {
      result
        ..add('is_deleted')
        ..add(serializers.serialize(object.isDeleted,
            specifiedType: const FullType(bool)));
    }
    if (object.isOwner != null) {
      result
        ..add('is_owner')
        ..add(serializers.serialize(object.isOwner,
            specifiedType: const FullType(bool)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ExpenseCategoryEntity deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExpenseCategoryEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'archived_at':
          result.archivedAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_deleted':
          result.isDeleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_owner':
          result.isOwner = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ExpenseStatusEntitySerializer
    implements StructuredSerializer<ExpenseStatusEntity> {
  @override
  final Iterable<Type> types = const [
    ExpenseStatusEntity,
    _$ExpenseStatusEntity
  ];
  @override
  final String wireName = 'ExpenseStatusEntity';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ExpenseStatusEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ExpenseStatusEntity deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExpenseStatusEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ExpenseListResponse extends ExpenseListResponse {
  @override
  final BuiltList<ExpenseEntity> data;

  factory _$ExpenseListResponse(
          [void Function(ExpenseListResponseBuilder) updates]) =>
      (new ExpenseListResponseBuilder()..update(updates)).build();

  _$ExpenseListResponse._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('ExpenseListResponse', 'data');
    }
  }

  @override
  ExpenseListResponse rebuild(
          void Function(ExpenseListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpenseListResponseBuilder toBuilder() =>
      new ExpenseListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpenseListResponse && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExpenseListResponse')
          ..add('data', data))
        .toString();
  }
}

class ExpenseListResponseBuilder
    implements Builder<ExpenseListResponse, ExpenseListResponseBuilder> {
  _$ExpenseListResponse _$v;

  ListBuilder<ExpenseEntity> _data;
  ListBuilder<ExpenseEntity> get data =>
      _$this._data ??= new ListBuilder<ExpenseEntity>();
  set data(ListBuilder<ExpenseEntity> data) => _$this._data = data;

  ExpenseListResponseBuilder();

  ExpenseListResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpenseListResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExpenseListResponse;
  }

  @override
  void update(void Function(ExpenseListResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExpenseListResponse build() {
    _$ExpenseListResponse _$result;
    try {
      _$result = _$v ?? new _$ExpenseListResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExpenseListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ExpenseItemResponse extends ExpenseItemResponse {
  @override
  final ExpenseEntity data;

  factory _$ExpenseItemResponse(
          [void Function(ExpenseItemResponseBuilder) updates]) =>
      (new ExpenseItemResponseBuilder()..update(updates)).build();

  _$ExpenseItemResponse._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('ExpenseItemResponse', 'data');
    }
  }

  @override
  ExpenseItemResponse rebuild(
          void Function(ExpenseItemResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpenseItemResponseBuilder toBuilder() =>
      new ExpenseItemResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpenseItemResponse && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExpenseItemResponse')
          ..add('data', data))
        .toString();
  }
}

class ExpenseItemResponseBuilder
    implements Builder<ExpenseItemResponse, ExpenseItemResponseBuilder> {
  _$ExpenseItemResponse _$v;

  ExpenseEntityBuilder _data;
  ExpenseEntityBuilder get data => _$this._data ??= new ExpenseEntityBuilder();
  set data(ExpenseEntityBuilder data) => _$this._data = data;

  ExpenseItemResponseBuilder();

  ExpenseItemResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpenseItemResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExpenseItemResponse;
  }

  @override
  void update(void Function(ExpenseItemResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExpenseItemResponse build() {
    _$ExpenseItemResponse _$result;
    try {
      _$result = _$v ?? new _$ExpenseItemResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExpenseItemResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ExpenseEntity extends ExpenseEntity {
  @override
  final String privateNotes;
  @override
  final String publicNotes;
  @override
  final bool shouldBeInvoiced;
  @override
  final bool invoiceDocuments;
  @override
  final String transactionId;
  @override
  final String transactionReference;
  @override
  final int bankId;
  @override
  final int expenseCurrencyId;
  @override
  final int categoryId;
  @override
  final double amount;
  @override
  final String expenseDate;
  @override
  final String paymentDate;
  @override
  final double exchangeRate;
  @override
  final int invoiceCurrencyId;
  @override
  final int paymentTypeId;
  @override
  final String taxName1;
  @override
  final String taxName2;
  @override
  final double taxRate1;
  @override
  final double taxRate2;
  @override
  final int clientId;
  @override
  final int invoiceId;
  @override
  final int vendorId;
  @override
  final String customValue1;
  @override
  final String customValue2;
  @override
  final int createdAt;
  @override
  final int updatedAt;
  @override
  final int archivedAt;
  @override
  final bool isDeleted;
  @override
  final bool isOwner;
  @override
  final int id;

  factory _$ExpenseEntity([void Function(ExpenseEntityBuilder) updates]) =>
      (new ExpenseEntityBuilder()..update(updates)).build();

  _$ExpenseEntity._(
      {this.privateNotes,
      this.publicNotes,
      this.shouldBeInvoiced,
      this.invoiceDocuments,
      this.transactionId,
      this.transactionReference,
      this.bankId,
      this.expenseCurrencyId,
      this.categoryId,
      this.amount,
      this.expenseDate,
      this.paymentDate,
      this.exchangeRate,
      this.invoiceCurrencyId,
      this.paymentTypeId,
      this.taxName1,
      this.taxName2,
      this.taxRate1,
      this.taxRate2,
      this.clientId,
      this.invoiceId,
      this.vendorId,
      this.customValue1,
      this.customValue2,
      this.createdAt,
      this.updatedAt,
      this.archivedAt,
      this.isDeleted,
      this.isOwner,
      this.id})
      : super._() {
    if (privateNotes == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'privateNotes');
    }
    if (publicNotes == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'publicNotes');
    }
    if (shouldBeInvoiced == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'shouldBeInvoiced');
    }
    if (invoiceDocuments == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'invoiceDocuments');
    }
    if (transactionId == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'transactionId');
    }
    if (transactionReference == null) {
      throw new BuiltValueNullFieldError(
          'ExpenseEntity', 'transactionReference');
    }
    if (bankId == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'bankId');
    }
    if (expenseCurrencyId == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'expenseCurrencyId');
    }
    if (amount == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'amount');
    }
    if (expenseDate == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'expenseDate');
    }
    if (paymentDate == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'paymentDate');
    }
    if (exchangeRate == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'exchangeRate');
    }
    if (invoiceCurrencyId == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'invoiceCurrencyId');
    }
    if (paymentTypeId == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'paymentTypeId');
    }
    if (taxName1 == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'taxName1');
    }
    if (taxName2 == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'taxName2');
    }
    if (taxRate1 == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'taxRate1');
    }
    if (taxRate2 == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'taxRate2');
    }
    if (clientId == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'clientId');
    }
    if (invoiceId == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'invoiceId');
    }
    if (vendorId == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'vendorId');
    }
    if (customValue1 == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'customValue1');
    }
    if (customValue2 == null) {
      throw new BuiltValueNullFieldError('ExpenseEntity', 'customValue2');
    }
  }

  @override
  ExpenseEntity rebuild(void Function(ExpenseEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpenseEntityBuilder toBuilder() => new ExpenseEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpenseEntity &&
        privateNotes == other.privateNotes &&
        publicNotes == other.publicNotes &&
        shouldBeInvoiced == other.shouldBeInvoiced &&
        invoiceDocuments == other.invoiceDocuments &&
        transactionId == other.transactionId &&
        transactionReference == other.transactionReference &&
        bankId == other.bankId &&
        expenseCurrencyId == other.expenseCurrencyId &&
        categoryId == other.categoryId &&
        amount == other.amount &&
        expenseDate == other.expenseDate &&
        paymentDate == other.paymentDate &&
        exchangeRate == other.exchangeRate &&
        invoiceCurrencyId == other.invoiceCurrencyId &&
        paymentTypeId == other.paymentTypeId &&
        taxName1 == other.taxName1 &&
        taxName2 == other.taxName2 &&
        taxRate1 == other.taxRate1 &&
        taxRate2 == other.taxRate2 &&
        clientId == other.clientId &&
        invoiceId == other.invoiceId &&
        vendorId == other.vendorId &&
        customValue1 == other.customValue1 &&
        customValue2 == other.customValue2 &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        archivedAt == other.archivedAt &&
        isDeleted == other.isDeleted &&
        isOwner == other.isOwner &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, privateNotes.hashCode), publicNotes.hashCode), shouldBeInvoiced.hashCode), invoiceDocuments.hashCode), transactionId.hashCode), transactionReference.hashCode), bankId.hashCode), expenseCurrencyId.hashCode), categoryId.hashCode), amount.hashCode), expenseDate.hashCode),
                                                                                paymentDate.hashCode),
                                                                            exchangeRate.hashCode),
                                                                        invoiceCurrencyId.hashCode),
                                                                    paymentTypeId.hashCode),
                                                                taxName1.hashCode),
                                                            taxName2.hashCode),
                                                        taxRate1.hashCode),
                                                    taxRate2.hashCode),
                                                clientId.hashCode),
                                            invoiceId.hashCode),
                                        vendorId.hashCode),
                                    customValue1.hashCode),
                                customValue2.hashCode),
                            createdAt.hashCode),
                        updatedAt.hashCode),
                    archivedAt.hashCode),
                isDeleted.hashCode),
            isOwner.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExpenseEntity')
          ..add('privateNotes', privateNotes)
          ..add('publicNotes', publicNotes)
          ..add('shouldBeInvoiced', shouldBeInvoiced)
          ..add('invoiceDocuments', invoiceDocuments)
          ..add('transactionId', transactionId)
          ..add('transactionReference', transactionReference)
          ..add('bankId', bankId)
          ..add('expenseCurrencyId', expenseCurrencyId)
          ..add('categoryId', categoryId)
          ..add('amount', amount)
          ..add('expenseDate', expenseDate)
          ..add('paymentDate', paymentDate)
          ..add('exchangeRate', exchangeRate)
          ..add('invoiceCurrencyId', invoiceCurrencyId)
          ..add('paymentTypeId', paymentTypeId)
          ..add('taxName1', taxName1)
          ..add('taxName2', taxName2)
          ..add('taxRate1', taxRate1)
          ..add('taxRate2', taxRate2)
          ..add('clientId', clientId)
          ..add('invoiceId', invoiceId)
          ..add('vendorId', vendorId)
          ..add('customValue1', customValue1)
          ..add('customValue2', customValue2)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('archivedAt', archivedAt)
          ..add('isDeleted', isDeleted)
          ..add('isOwner', isOwner)
          ..add('id', id))
        .toString();
  }
}

class ExpenseEntityBuilder
    implements Builder<ExpenseEntity, ExpenseEntityBuilder> {
  _$ExpenseEntity _$v;

  String _privateNotes;
  String get privateNotes => _$this._privateNotes;
  set privateNotes(String privateNotes) => _$this._privateNotes = privateNotes;

  String _publicNotes;
  String get publicNotes => _$this._publicNotes;
  set publicNotes(String publicNotes) => _$this._publicNotes = publicNotes;

  bool _shouldBeInvoiced;
  bool get shouldBeInvoiced => _$this._shouldBeInvoiced;
  set shouldBeInvoiced(bool shouldBeInvoiced) =>
      _$this._shouldBeInvoiced = shouldBeInvoiced;

  bool _invoiceDocuments;
  bool get invoiceDocuments => _$this._invoiceDocuments;
  set invoiceDocuments(bool invoiceDocuments) =>
      _$this._invoiceDocuments = invoiceDocuments;

  String _transactionId;
  String get transactionId => _$this._transactionId;
  set transactionId(String transactionId) =>
      _$this._transactionId = transactionId;

  String _transactionReference;
  String get transactionReference => _$this._transactionReference;
  set transactionReference(String transactionReference) =>
      _$this._transactionReference = transactionReference;

  int _bankId;
  int get bankId => _$this._bankId;
  set bankId(int bankId) => _$this._bankId = bankId;

  int _expenseCurrencyId;
  int get expenseCurrencyId => _$this._expenseCurrencyId;
  set expenseCurrencyId(int expenseCurrencyId) =>
      _$this._expenseCurrencyId = expenseCurrencyId;

  int _categoryId;
  int get categoryId => _$this._categoryId;
  set categoryId(int categoryId) => _$this._categoryId = categoryId;

  double _amount;
  double get amount => _$this._amount;
  set amount(double amount) => _$this._amount = amount;

  String _expenseDate;
  String get expenseDate => _$this._expenseDate;
  set expenseDate(String expenseDate) => _$this._expenseDate = expenseDate;

  String _paymentDate;
  String get paymentDate => _$this._paymentDate;
  set paymentDate(String paymentDate) => _$this._paymentDate = paymentDate;

  double _exchangeRate;
  double get exchangeRate => _$this._exchangeRate;
  set exchangeRate(double exchangeRate) => _$this._exchangeRate = exchangeRate;

  int _invoiceCurrencyId;
  int get invoiceCurrencyId => _$this._invoiceCurrencyId;
  set invoiceCurrencyId(int invoiceCurrencyId) =>
      _$this._invoiceCurrencyId = invoiceCurrencyId;

  int _paymentTypeId;
  int get paymentTypeId => _$this._paymentTypeId;
  set paymentTypeId(int paymentTypeId) => _$this._paymentTypeId = paymentTypeId;

  String _taxName1;
  String get taxName1 => _$this._taxName1;
  set taxName1(String taxName1) => _$this._taxName1 = taxName1;

  String _taxName2;
  String get taxName2 => _$this._taxName2;
  set taxName2(String taxName2) => _$this._taxName2 = taxName2;

  double _taxRate1;
  double get taxRate1 => _$this._taxRate1;
  set taxRate1(double taxRate1) => _$this._taxRate1 = taxRate1;

  double _taxRate2;
  double get taxRate2 => _$this._taxRate2;
  set taxRate2(double taxRate2) => _$this._taxRate2 = taxRate2;

  int _clientId;
  int get clientId => _$this._clientId;
  set clientId(int clientId) => _$this._clientId = clientId;

  int _invoiceId;
  int get invoiceId => _$this._invoiceId;
  set invoiceId(int invoiceId) => _$this._invoiceId = invoiceId;

  int _vendorId;
  int get vendorId => _$this._vendorId;
  set vendorId(int vendorId) => _$this._vendorId = vendorId;

  String _customValue1;
  String get customValue1 => _$this._customValue1;
  set customValue1(String customValue1) => _$this._customValue1 = customValue1;

  String _customValue2;
  String get customValue2 => _$this._customValue2;
  set customValue2(String customValue2) => _$this._customValue2 = customValue2;

  int _createdAt;
  int get createdAt => _$this._createdAt;
  set createdAt(int createdAt) => _$this._createdAt = createdAt;

  int _updatedAt;
  int get updatedAt => _$this._updatedAt;
  set updatedAt(int updatedAt) => _$this._updatedAt = updatedAt;

  int _archivedAt;
  int get archivedAt => _$this._archivedAt;
  set archivedAt(int archivedAt) => _$this._archivedAt = archivedAt;

  bool _isDeleted;
  bool get isDeleted => _$this._isDeleted;
  set isDeleted(bool isDeleted) => _$this._isDeleted = isDeleted;

  bool _isOwner;
  bool get isOwner => _$this._isOwner;
  set isOwner(bool isOwner) => _$this._isOwner = isOwner;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ExpenseEntityBuilder();

  ExpenseEntityBuilder get _$this {
    if (_$v != null) {
      _privateNotes = _$v.privateNotes;
      _publicNotes = _$v.publicNotes;
      _shouldBeInvoiced = _$v.shouldBeInvoiced;
      _invoiceDocuments = _$v.invoiceDocuments;
      _transactionId = _$v.transactionId;
      _transactionReference = _$v.transactionReference;
      _bankId = _$v.bankId;
      _expenseCurrencyId = _$v.expenseCurrencyId;
      _categoryId = _$v.categoryId;
      _amount = _$v.amount;
      _expenseDate = _$v.expenseDate;
      _paymentDate = _$v.paymentDate;
      _exchangeRate = _$v.exchangeRate;
      _invoiceCurrencyId = _$v.invoiceCurrencyId;
      _paymentTypeId = _$v.paymentTypeId;
      _taxName1 = _$v.taxName1;
      _taxName2 = _$v.taxName2;
      _taxRate1 = _$v.taxRate1;
      _taxRate2 = _$v.taxRate2;
      _clientId = _$v.clientId;
      _invoiceId = _$v.invoiceId;
      _vendorId = _$v.vendorId;
      _customValue1 = _$v.customValue1;
      _customValue2 = _$v.customValue2;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _archivedAt = _$v.archivedAt;
      _isDeleted = _$v.isDeleted;
      _isOwner = _$v.isOwner;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpenseEntity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExpenseEntity;
  }

  @override
  void update(void Function(ExpenseEntityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExpenseEntity build() {
    final _$result = _$v ??
        new _$ExpenseEntity._(
            privateNotes: privateNotes,
            publicNotes: publicNotes,
            shouldBeInvoiced: shouldBeInvoiced,
            invoiceDocuments: invoiceDocuments,
            transactionId: transactionId,
            transactionReference: transactionReference,
            bankId: bankId,
            expenseCurrencyId: expenseCurrencyId,
            categoryId: categoryId,
            amount: amount,
            expenseDate: expenseDate,
            paymentDate: paymentDate,
            exchangeRate: exchangeRate,
            invoiceCurrencyId: invoiceCurrencyId,
            paymentTypeId: paymentTypeId,
            taxName1: taxName1,
            taxName2: taxName2,
            taxRate1: taxRate1,
            taxRate2: taxRate2,
            clientId: clientId,
            invoiceId: invoiceId,
            vendorId: vendorId,
            customValue1: customValue1,
            customValue2: customValue2,
            createdAt: createdAt,
            updatedAt: updatedAt,
            archivedAt: archivedAt,
            isDeleted: isDeleted,
            isOwner: isOwner,
            id: id);
    replace(_$result);
    return _$result;
  }
}

class _$ExpenseCategoryEntity extends ExpenseCategoryEntity {
  @override
  final String name;
  @override
  final int createdAt;
  @override
  final int updatedAt;
  @override
  final int archivedAt;
  @override
  final bool isDeleted;
  @override
  final bool isOwner;
  @override
  final int id;

  factory _$ExpenseCategoryEntity(
          [void Function(ExpenseCategoryEntityBuilder) updates]) =>
      (new ExpenseCategoryEntityBuilder()..update(updates)).build();

  _$ExpenseCategoryEntity._(
      {this.name,
      this.createdAt,
      this.updatedAt,
      this.archivedAt,
      this.isDeleted,
      this.isOwner,
      this.id})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('ExpenseCategoryEntity', 'name');
    }
  }

  @override
  ExpenseCategoryEntity rebuild(
          void Function(ExpenseCategoryEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpenseCategoryEntityBuilder toBuilder() =>
      new ExpenseCategoryEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpenseCategoryEntity &&
        name == other.name &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        archivedAt == other.archivedAt &&
        isDeleted == other.isDeleted &&
        isOwner == other.isOwner &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), createdAt.hashCode),
                        updatedAt.hashCode),
                    archivedAt.hashCode),
                isDeleted.hashCode),
            isOwner.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExpenseCategoryEntity')
          ..add('name', name)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('archivedAt', archivedAt)
          ..add('isDeleted', isDeleted)
          ..add('isOwner', isOwner)
          ..add('id', id))
        .toString();
  }
}

class ExpenseCategoryEntityBuilder
    implements Builder<ExpenseCategoryEntity, ExpenseCategoryEntityBuilder> {
  _$ExpenseCategoryEntity _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _createdAt;
  int get createdAt => _$this._createdAt;
  set createdAt(int createdAt) => _$this._createdAt = createdAt;

  int _updatedAt;
  int get updatedAt => _$this._updatedAt;
  set updatedAt(int updatedAt) => _$this._updatedAt = updatedAt;

  int _archivedAt;
  int get archivedAt => _$this._archivedAt;
  set archivedAt(int archivedAt) => _$this._archivedAt = archivedAt;

  bool _isDeleted;
  bool get isDeleted => _$this._isDeleted;
  set isDeleted(bool isDeleted) => _$this._isDeleted = isDeleted;

  bool _isOwner;
  bool get isOwner => _$this._isOwner;
  set isOwner(bool isOwner) => _$this._isOwner = isOwner;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ExpenseCategoryEntityBuilder();

  ExpenseCategoryEntityBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _archivedAt = _$v.archivedAt;
      _isDeleted = _$v.isDeleted;
      _isOwner = _$v.isOwner;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpenseCategoryEntity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExpenseCategoryEntity;
  }

  @override
  void update(void Function(ExpenseCategoryEntityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExpenseCategoryEntity build() {
    final _$result = _$v ??
        new _$ExpenseCategoryEntity._(
            name: name,
            createdAt: createdAt,
            updatedAt: updatedAt,
            archivedAt: archivedAt,
            isDeleted: isDeleted,
            isOwner: isOwner,
            id: id);
    replace(_$result);
    return _$result;
  }
}

class _$ExpenseStatusEntity extends ExpenseStatusEntity {
  @override
  final int id;
  @override
  final String name;

  factory _$ExpenseStatusEntity(
          [void Function(ExpenseStatusEntityBuilder) updates]) =>
      (new ExpenseStatusEntityBuilder()..update(updates)).build();

  _$ExpenseStatusEntity._({this.id, this.name}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ExpenseStatusEntity', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('ExpenseStatusEntity', 'name');
    }
  }

  @override
  ExpenseStatusEntity rebuild(
          void Function(ExpenseStatusEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpenseStatusEntityBuilder toBuilder() =>
      new ExpenseStatusEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpenseStatusEntity && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExpenseStatusEntity')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ExpenseStatusEntityBuilder
    implements Builder<ExpenseStatusEntity, ExpenseStatusEntityBuilder> {
  _$ExpenseStatusEntity _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ExpenseStatusEntityBuilder();

  ExpenseStatusEntityBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpenseStatusEntity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExpenseStatusEntity;
  }

  @override
  void update(void Function(ExpenseStatusEntityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExpenseStatusEntity build() {
    final _$result = _$v ?? new _$ExpenseStatusEntity._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
