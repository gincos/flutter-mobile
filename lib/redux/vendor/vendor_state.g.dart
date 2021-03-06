// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VendorState> _$vendorStateSerializer = new _$VendorStateSerializer();
Serializer<VendorUIState> _$vendorUIStateSerializer =
    new _$VendorUIStateSerializer();

class _$VendorStateSerializer implements StructuredSerializer<VendorState> {
  @override
  final Iterable<Type> types = const [VendorState, _$VendorState];
  @override
  final String wireName = 'VendorState';

  @override
  Iterable<Object> serialize(Serializers serializers, VendorState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'map',
      serializers.serialize(object.map,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(int), const FullType(VendorEntity)])),
      'list',
      serializers.serialize(object.list,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
    ];
    if (object.lastUpdated != null) {
      result
        ..add('lastUpdated')
        ..add(serializers.serialize(object.lastUpdated,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  VendorState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VendorStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'lastUpdated':
          result.lastUpdated = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'map':
          result.map.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(int),
                const FullType(VendorEntity)
              ])) as BuiltMap<dynamic, dynamic>);
          break;
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$VendorUIStateSerializer implements StructuredSerializer<VendorUIState> {
  @override
  final Iterable<Type> types = const [VendorUIState, _$VendorUIState];
  @override
  final String wireName = 'VendorUIState';

  @override
  Iterable<Object> serialize(Serializers serializers, VendorUIState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'selectedId',
      serializers.serialize(object.selectedId,
          specifiedType: const FullType(int)),
      'listUIState',
      serializers.serialize(object.listUIState,
          specifiedType: const FullType(ListUIState)),
    ];
    if (object.editing != null) {
      result
        ..add('editing')
        ..add(serializers.serialize(object.editing,
            specifiedType: const FullType(VendorEntity)));
    }
    if (object.editingContact != null) {
      result
        ..add('editingContact')
        ..add(serializers.serialize(object.editingContact,
            specifiedType: const FullType(VendorContactEntity)));
    }
    return result;
  }

  @override
  VendorUIState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VendorUIStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'editing':
          result.editing.replace(serializers.deserialize(value,
              specifiedType: const FullType(VendorEntity)) as VendorEntity);
          break;
        case 'editingContact':
          result.editingContact.replace(serializers.deserialize(value,
                  specifiedType: const FullType(VendorContactEntity))
              as VendorContactEntity);
          break;
        case 'selectedId':
          result.selectedId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'listUIState':
          result.listUIState.replace(serializers.deserialize(value,
              specifiedType: const FullType(ListUIState)) as ListUIState);
          break;
      }
    }

    return result.build();
  }
}

class _$VendorState extends VendorState {
  @override
  final int lastUpdated;
  @override
  final BuiltMap<int, VendorEntity> map;
  @override
  final BuiltList<int> list;

  factory _$VendorState([void Function(VendorStateBuilder) updates]) =>
      (new VendorStateBuilder()..update(updates)).build();

  _$VendorState._({this.lastUpdated, this.map, this.list}) : super._() {
    if (map == null) {
      throw new BuiltValueNullFieldError('VendorState', 'map');
    }
    if (list == null) {
      throw new BuiltValueNullFieldError('VendorState', 'list');
    }
  }

  @override
  VendorState rebuild(void Function(VendorStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorStateBuilder toBuilder() => new VendorStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorState &&
        lastUpdated == other.lastUpdated &&
        map == other.map &&
        list == other.list;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, lastUpdated.hashCode), map.hashCode), list.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VendorState')
          ..add('lastUpdated', lastUpdated)
          ..add('map', map)
          ..add('list', list))
        .toString();
  }
}

class VendorStateBuilder implements Builder<VendorState, VendorStateBuilder> {
  _$VendorState _$v;

  int _lastUpdated;
  int get lastUpdated => _$this._lastUpdated;
  set lastUpdated(int lastUpdated) => _$this._lastUpdated = lastUpdated;

  MapBuilder<int, VendorEntity> _map;
  MapBuilder<int, VendorEntity> get map =>
      _$this._map ??= new MapBuilder<int, VendorEntity>();
  set map(MapBuilder<int, VendorEntity> map) => _$this._map = map;

  ListBuilder<int> _list;
  ListBuilder<int> get list => _$this._list ??= new ListBuilder<int>();
  set list(ListBuilder<int> list) => _$this._list = list;

  VendorStateBuilder();

  VendorStateBuilder get _$this {
    if (_$v != null) {
      _lastUpdated = _$v.lastUpdated;
      _map = _$v.map?.toBuilder();
      _list = _$v.list?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VendorState;
  }

  @override
  void update(void Function(VendorStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VendorState build() {
    _$VendorState _$result;
    try {
      _$result = _$v ??
          new _$VendorState._(
              lastUpdated: lastUpdated, map: map.build(), list: list.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'map';
        map.build();
        _$failedField = 'list';
        list.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'VendorState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$VendorUIState extends VendorUIState {
  @override
  final VendorEntity editing;
  @override
  final VendorContactEntity editingContact;
  @override
  final int selectedId;
  @override
  final ListUIState listUIState;

  factory _$VendorUIState([void Function(VendorUIStateBuilder) updates]) =>
      (new VendorUIStateBuilder()..update(updates)).build();

  _$VendorUIState._(
      {this.editing, this.editingContact, this.selectedId, this.listUIState})
      : super._() {
    if (selectedId == null) {
      throw new BuiltValueNullFieldError('VendorUIState', 'selectedId');
    }
    if (listUIState == null) {
      throw new BuiltValueNullFieldError('VendorUIState', 'listUIState');
    }
  }

  @override
  VendorUIState rebuild(void Function(VendorUIStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendorUIStateBuilder toBuilder() => new VendorUIStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendorUIState &&
        editing == other.editing &&
        editingContact == other.editingContact &&
        selectedId == other.selectedId &&
        listUIState == other.listUIState;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, editing.hashCode), editingContact.hashCode),
            selectedId.hashCode),
        listUIState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VendorUIState')
          ..add('editing', editing)
          ..add('editingContact', editingContact)
          ..add('selectedId', selectedId)
          ..add('listUIState', listUIState))
        .toString();
  }
}

class VendorUIStateBuilder
    implements Builder<VendorUIState, VendorUIStateBuilder> {
  _$VendorUIState _$v;

  VendorEntityBuilder _editing;
  VendorEntityBuilder get editing =>
      _$this._editing ??= new VendorEntityBuilder();
  set editing(VendorEntityBuilder editing) => _$this._editing = editing;

  VendorContactEntityBuilder _editingContact;
  VendorContactEntityBuilder get editingContact =>
      _$this._editingContact ??= new VendorContactEntityBuilder();
  set editingContact(VendorContactEntityBuilder editingContact) =>
      _$this._editingContact = editingContact;

  int _selectedId;
  int get selectedId => _$this._selectedId;
  set selectedId(int selectedId) => _$this._selectedId = selectedId;

  ListUIStateBuilder _listUIState;
  ListUIStateBuilder get listUIState =>
      _$this._listUIState ??= new ListUIStateBuilder();
  set listUIState(ListUIStateBuilder listUIState) =>
      _$this._listUIState = listUIState;

  VendorUIStateBuilder();

  VendorUIStateBuilder get _$this {
    if (_$v != null) {
      _editing = _$v.editing?.toBuilder();
      _editingContact = _$v.editingContact?.toBuilder();
      _selectedId = _$v.selectedId;
      _listUIState = _$v.listUIState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendorUIState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VendorUIState;
  }

  @override
  void update(void Function(VendorUIStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VendorUIState build() {
    _$VendorUIState _$result;
    try {
      _$result = _$v ??
          new _$VendorUIState._(
              editing: _editing?.build(),
              editingContact: _editingContact?.build(),
              selectedId: selectedId,
              listUIState: listUIState.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'editing';
        _editing?.build();
        _$failedField = 'editingContact';
        _editingContact?.build();

        _$failedField = 'listUIState';
        listUIState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'VendorUIState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
