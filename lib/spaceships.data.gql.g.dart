// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spaceships.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetSpaceshipsData> _$gGetSpaceshipsDataSerializer =
    new _$GGetSpaceshipsDataSerializer();
Serializer<GGetSpaceshipsData_spaceships>
    _$gGetSpaceshipsDataSpaceshipsSerializer =
    new _$GGetSpaceshipsData_spaceshipsSerializer();
Serializer<GGetSpaceshipsData_spaceships_data>
    _$gGetSpaceshipsDataSpaceshipsDataSerializer =
    new _$GGetSpaceshipsData_spaceships_dataSerializer();
Serializer<GGetSpaceshipData> _$gGetSpaceshipDataSerializer =
    new _$GGetSpaceshipDataSerializer();
Serializer<GGetSpaceshipData_findSpaceshipByID>
    _$gGetSpaceshipDataFindSpaceshipByIDSerializer =
    new _$GGetSpaceshipData_findSpaceshipByIDSerializer();
Serializer<GCreateSpaceshipData> _$gCreateSpaceshipDataSerializer =
    new _$GCreateSpaceshipDataSerializer();
Serializer<GCreateSpaceshipData_createSpaceship>
    _$gCreateSpaceshipDataCreateSpaceshipSerializer =
    new _$GCreateSpaceshipData_createSpaceshipSerializer();

class _$GGetSpaceshipsDataSerializer
    implements StructuredSerializer<GGetSpaceshipsData> {
  @override
  final Iterable<Type> types = const [GGetSpaceshipsData, _$GGetSpaceshipsData];
  @override
  final String wireName = 'GGetSpaceshipsData';

  @override
  Iterable<Object> serialize(Serializers serializers, GGetSpaceshipsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'spaceships',
      serializers.serialize(object.spaceships,
          specifiedType: const FullType(GGetSpaceshipsData_spaceships)),
    ];

    return result;
  }

  @override
  GGetSpaceshipsData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSpaceshipsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'spaceships':
          result.spaceships.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetSpaceshipsData_spaceships))
              as GGetSpaceshipsData_spaceships);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetSpaceshipsData_spaceshipsSerializer
    implements StructuredSerializer<GGetSpaceshipsData_spaceships> {
  @override
  final Iterable<Type> types = const [
    GGetSpaceshipsData_spaceships,
    _$GGetSpaceshipsData_spaceships
  ];
  @override
  final String wireName = 'GGetSpaceshipsData_spaceships';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GGetSpaceshipsData_spaceships object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetSpaceshipsData_spaceships_data)])));
    }
    return result;
  }

  @override
  GGetSpaceshipsData_spaceships deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSpaceshipsData_spaceshipsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetSpaceshipsData_spaceships_data)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetSpaceshipsData_spaceships_dataSerializer
    implements StructuredSerializer<GGetSpaceshipsData_spaceships_data> {
  @override
  final Iterable<Type> types = const [
    GGetSpaceshipsData_spaceships_data,
    _$GGetSpaceshipsData_spaceships_data
  ];
  @override
  final String wireName = 'GGetSpaceshipsData_spaceships_data';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GGetSpaceshipsData_spaceships_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetSpaceshipsData_spaceships_data deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSpaceshipsData_spaceships_dataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '_id':
          result.G_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$GGetSpaceshipDataSerializer
    implements StructuredSerializer<GGetSpaceshipData> {
  @override
  final Iterable<Type> types = const [GGetSpaceshipData, _$GGetSpaceshipData];
  @override
  final String wireName = 'GGetSpaceshipData';

  @override
  Iterable<Object> serialize(Serializers serializers, GGetSpaceshipData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    if (object.findSpaceshipByID != null) {
      result
        ..add('findSpaceshipByID')
        ..add(serializers.serialize(object.findSpaceshipByID,
            specifiedType:
                const FullType(GGetSpaceshipData_findSpaceshipByID)));
    }
    return result;
  }

  @override
  GGetSpaceshipData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSpaceshipDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'findSpaceshipByID':
          result.findSpaceshipByID.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetSpaceshipData_findSpaceshipByID))
              as GGetSpaceshipData_findSpaceshipByID);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetSpaceshipData_findSpaceshipByIDSerializer
    implements StructuredSerializer<GGetSpaceshipData_findSpaceshipByID> {
  @override
  final Iterable<Type> types = const [
    GGetSpaceshipData_findSpaceshipByID,
    _$GGetSpaceshipData_findSpaceshipByID
  ];
  @override
  final String wireName = 'GGetSpaceshipData_findSpaceshipByID';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GGetSpaceshipData_findSpaceshipByID object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetSpaceshipData_findSpaceshipByID deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSpaceshipData_findSpaceshipByIDBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '_id':
          result.G_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$GCreateSpaceshipDataSerializer
    implements StructuredSerializer<GCreateSpaceshipData> {
  @override
  final Iterable<Type> types = const [
    GCreateSpaceshipData,
    _$GCreateSpaceshipData
  ];
  @override
  final String wireName = 'GCreateSpaceshipData';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GCreateSpaceshipData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createSpaceship',
      serializers.serialize(object.createSpaceship,
          specifiedType: const FullType(GCreateSpaceshipData_createSpaceship)),
    ];

    return result;
  }

  @override
  GCreateSpaceshipData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateSpaceshipDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createSpaceship':
          result.createSpaceship.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateSpaceshipData_createSpaceship))
              as GCreateSpaceshipData_createSpaceship);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateSpaceshipData_createSpaceshipSerializer
    implements StructuredSerializer<GCreateSpaceshipData_createSpaceship> {
  @override
  final Iterable<Type> types = const [
    GCreateSpaceshipData_createSpaceship,
    _$GCreateSpaceshipData_createSpaceship
  ];
  @override
  final String wireName = 'GCreateSpaceshipData_createSpaceship';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GCreateSpaceshipData_createSpaceship object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateSpaceshipData_createSpaceship deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateSpaceshipData_createSpaceshipBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '_id':
          result.G_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$GGetSpaceshipsData extends GGetSpaceshipsData {
  @override
  final String G__typename;
  @override
  final GGetSpaceshipsData_spaceships spaceships;

  factory _$GGetSpaceshipsData(
          [void Function(GGetSpaceshipsDataBuilder) updates]) =>
      (new GGetSpaceshipsDataBuilder()..update(updates)).build();

  _$GGetSpaceshipsData._({this.G__typename, this.spaceships}) : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError('GGetSpaceshipsData', 'G__typename');
    }
    if (spaceships == null) {
      throw new BuiltValueNullFieldError('GGetSpaceshipsData', 'spaceships');
    }
  }

  @override
  GGetSpaceshipsData rebuild(
          void Function(GGetSpaceshipsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSpaceshipsDataBuilder toBuilder() =>
      new GGetSpaceshipsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSpaceshipsData &&
        G__typename == other.G__typename &&
        spaceships == other.spaceships;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), spaceships.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetSpaceshipsData')
          ..add('G__typename', G__typename)
          ..add('spaceships', spaceships))
        .toString();
  }
}

class GGetSpaceshipsDataBuilder
    implements Builder<GGetSpaceshipsData, GGetSpaceshipsDataBuilder> {
  _$GGetSpaceshipsData _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  GGetSpaceshipsData_spaceshipsBuilder _spaceships;
  GGetSpaceshipsData_spaceshipsBuilder get spaceships =>
      _$this._spaceships ??= new GGetSpaceshipsData_spaceshipsBuilder();
  set spaceships(GGetSpaceshipsData_spaceshipsBuilder spaceships) =>
      _$this._spaceships = spaceships;

  GGetSpaceshipsDataBuilder() {
    GGetSpaceshipsData._initializeBuilder(this);
  }

  GGetSpaceshipsDataBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _spaceships = _$v.spaceships?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetSpaceshipsData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GGetSpaceshipsData;
  }

  @override
  void update(void Function(GGetSpaceshipsDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetSpaceshipsData build() {
    _$GGetSpaceshipsData _$result;
    try {
      _$result = _$v ??
          new _$GGetSpaceshipsData._(
              G__typename: G__typename, spaceships: spaceships.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'spaceships';
        spaceships.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetSpaceshipsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetSpaceshipsData_spaceships extends GGetSpaceshipsData_spaceships {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetSpaceshipsData_spaceships_data> data;

  factory _$GGetSpaceshipsData_spaceships(
          [void Function(GGetSpaceshipsData_spaceshipsBuilder) updates]) =>
      (new GGetSpaceshipsData_spaceshipsBuilder()..update(updates)).build();

  _$GGetSpaceshipsData_spaceships._({this.G__typename, this.data}) : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GGetSpaceshipsData_spaceships', 'G__typename');
    }
  }

  @override
  GGetSpaceshipsData_spaceships rebuild(
          void Function(GGetSpaceshipsData_spaceshipsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSpaceshipsData_spaceshipsBuilder toBuilder() =>
      new GGetSpaceshipsData_spaceshipsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSpaceshipsData_spaceships &&
        G__typename == other.G__typename &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetSpaceshipsData_spaceships')
          ..add('G__typename', G__typename)
          ..add('data', data))
        .toString();
  }
}

class GGetSpaceshipsData_spaceshipsBuilder
    implements
        Builder<GGetSpaceshipsData_spaceships,
            GGetSpaceshipsData_spaceshipsBuilder> {
  _$GGetSpaceshipsData_spaceships _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetSpaceshipsData_spaceships_data> _data;
  ListBuilder<GGetSpaceshipsData_spaceships_data> get data =>
      _$this._data ??= new ListBuilder<GGetSpaceshipsData_spaceships_data>();
  set data(ListBuilder<GGetSpaceshipsData_spaceships_data> data) =>
      _$this._data = data;

  GGetSpaceshipsData_spaceshipsBuilder() {
    GGetSpaceshipsData_spaceships._initializeBuilder(this);
  }

  GGetSpaceshipsData_spaceshipsBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetSpaceshipsData_spaceships other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GGetSpaceshipsData_spaceships;
  }

  @override
  void update(void Function(GGetSpaceshipsData_spaceshipsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetSpaceshipsData_spaceships build() {
    _$GGetSpaceshipsData_spaceships _$result;
    try {
      _$result = _$v ??
          new _$GGetSpaceshipsData_spaceships._(
              G__typename: G__typename, data: _data?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetSpaceshipsData_spaceships', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetSpaceshipsData_spaceships_data
    extends GGetSpaceshipsData_spaceships_data {
  @override
  final String G__typename;
  @override
  final String G_id;
  @override
  final String name;

  factory _$GGetSpaceshipsData_spaceships_data(
          [void Function(GGetSpaceshipsData_spaceships_dataBuilder) updates]) =>
      (new GGetSpaceshipsData_spaceships_dataBuilder()..update(updates))
          .build();

  _$GGetSpaceshipsData_spaceships_data._(
      {this.G__typename, this.G_id, this.name})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GGetSpaceshipsData_spaceships_data', 'G__typename');
    }
    if (G_id == null) {
      throw new BuiltValueNullFieldError(
          'GGetSpaceshipsData_spaceships_data', 'G_id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError(
          'GGetSpaceshipsData_spaceships_data', 'name');
    }
  }

  @override
  GGetSpaceshipsData_spaceships_data rebuild(
          void Function(GGetSpaceshipsData_spaceships_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSpaceshipsData_spaceships_dataBuilder toBuilder() =>
      new GGetSpaceshipsData_spaceships_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSpaceshipsData_spaceships_data &&
        G__typename == other.G__typename &&
        G_id == other.G_id &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), G_id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetSpaceshipsData_spaceships_data')
          ..add('G__typename', G__typename)
          ..add('G_id', G_id)
          ..add('name', name))
        .toString();
  }
}

class GGetSpaceshipsData_spaceships_dataBuilder
    implements
        Builder<GGetSpaceshipsData_spaceships_data,
            GGetSpaceshipsData_spaceships_dataBuilder> {
  _$GGetSpaceshipsData_spaceships_data _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _G_id;
  String get G_id => _$this._G_id;
  set G_id(String G_id) => _$this._G_id = G_id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  GGetSpaceshipsData_spaceships_dataBuilder() {
    GGetSpaceshipsData_spaceships_data._initializeBuilder(this);
  }

  GGetSpaceshipsData_spaceships_dataBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _G_id = _$v.G_id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetSpaceshipsData_spaceships_data other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GGetSpaceshipsData_spaceships_data;
  }

  @override
  void update(
      void Function(GGetSpaceshipsData_spaceships_dataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetSpaceshipsData_spaceships_data build() {
    final _$result = _$v ??
        new _$GGetSpaceshipsData_spaceships_data._(
            G__typename: G__typename, G_id: G_id, name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GGetSpaceshipData extends GGetSpaceshipData {
  @override
  final String G__typename;
  @override
  final GGetSpaceshipData_findSpaceshipByID findSpaceshipByID;

  factory _$GGetSpaceshipData(
          [void Function(GGetSpaceshipDataBuilder) updates]) =>
      (new GGetSpaceshipDataBuilder()..update(updates)).build();

  _$GGetSpaceshipData._({this.G__typename, this.findSpaceshipByID})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError('GGetSpaceshipData', 'G__typename');
    }
  }

  @override
  GGetSpaceshipData rebuild(void Function(GGetSpaceshipDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSpaceshipDataBuilder toBuilder() =>
      new GGetSpaceshipDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSpaceshipData &&
        G__typename == other.G__typename &&
        findSpaceshipByID == other.findSpaceshipByID;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), findSpaceshipByID.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetSpaceshipData')
          ..add('G__typename', G__typename)
          ..add('findSpaceshipByID', findSpaceshipByID))
        .toString();
  }
}

class GGetSpaceshipDataBuilder
    implements Builder<GGetSpaceshipData, GGetSpaceshipDataBuilder> {
  _$GGetSpaceshipData _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  GGetSpaceshipData_findSpaceshipByIDBuilder _findSpaceshipByID;
  GGetSpaceshipData_findSpaceshipByIDBuilder get findSpaceshipByID =>
      _$this._findSpaceshipByID ??=
          new GGetSpaceshipData_findSpaceshipByIDBuilder();
  set findSpaceshipByID(
          GGetSpaceshipData_findSpaceshipByIDBuilder findSpaceshipByID) =>
      _$this._findSpaceshipByID = findSpaceshipByID;

  GGetSpaceshipDataBuilder() {
    GGetSpaceshipData._initializeBuilder(this);
  }

  GGetSpaceshipDataBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _findSpaceshipByID = _$v.findSpaceshipByID?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetSpaceshipData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GGetSpaceshipData;
  }

  @override
  void update(void Function(GGetSpaceshipDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetSpaceshipData build() {
    _$GGetSpaceshipData _$result;
    try {
      _$result = _$v ??
          new _$GGetSpaceshipData._(
              G__typename: G__typename,
              findSpaceshipByID: _findSpaceshipByID?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'findSpaceshipByID';
        _findSpaceshipByID?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetSpaceshipData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetSpaceshipData_findSpaceshipByID
    extends GGetSpaceshipData_findSpaceshipByID {
  @override
  final String G__typename;
  @override
  final String G_id;
  @override
  final String name;

  factory _$GGetSpaceshipData_findSpaceshipByID(
          [void Function(GGetSpaceshipData_findSpaceshipByIDBuilder)
              updates]) =>
      (new GGetSpaceshipData_findSpaceshipByIDBuilder()..update(updates))
          .build();

  _$GGetSpaceshipData_findSpaceshipByID._(
      {this.G__typename, this.G_id, this.name})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GGetSpaceshipData_findSpaceshipByID', 'G__typename');
    }
    if (G_id == null) {
      throw new BuiltValueNullFieldError(
          'GGetSpaceshipData_findSpaceshipByID', 'G_id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError(
          'GGetSpaceshipData_findSpaceshipByID', 'name');
    }
  }

  @override
  GGetSpaceshipData_findSpaceshipByID rebuild(
          void Function(GGetSpaceshipData_findSpaceshipByIDBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSpaceshipData_findSpaceshipByIDBuilder toBuilder() =>
      new GGetSpaceshipData_findSpaceshipByIDBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSpaceshipData_findSpaceshipByID &&
        G__typename == other.G__typename &&
        G_id == other.G_id &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), G_id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetSpaceshipData_findSpaceshipByID')
          ..add('G__typename', G__typename)
          ..add('G_id', G_id)
          ..add('name', name))
        .toString();
  }
}

class GGetSpaceshipData_findSpaceshipByIDBuilder
    implements
        Builder<GGetSpaceshipData_findSpaceshipByID,
            GGetSpaceshipData_findSpaceshipByIDBuilder> {
  _$GGetSpaceshipData_findSpaceshipByID _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _G_id;
  String get G_id => _$this._G_id;
  set G_id(String G_id) => _$this._G_id = G_id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  GGetSpaceshipData_findSpaceshipByIDBuilder() {
    GGetSpaceshipData_findSpaceshipByID._initializeBuilder(this);
  }

  GGetSpaceshipData_findSpaceshipByIDBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _G_id = _$v.G_id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetSpaceshipData_findSpaceshipByID other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GGetSpaceshipData_findSpaceshipByID;
  }

  @override
  void update(
      void Function(GGetSpaceshipData_findSpaceshipByIDBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetSpaceshipData_findSpaceshipByID build() {
    final _$result = _$v ??
        new _$GGetSpaceshipData_findSpaceshipByID._(
            G__typename: G__typename, G_id: G_id, name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GCreateSpaceshipData extends GCreateSpaceshipData {
  @override
  final String G__typename;
  @override
  final GCreateSpaceshipData_createSpaceship createSpaceship;

  factory _$GCreateSpaceshipData(
          [void Function(GCreateSpaceshipDataBuilder) updates]) =>
      (new GCreateSpaceshipDataBuilder()..update(updates)).build();

  _$GCreateSpaceshipData._({this.G__typename, this.createSpaceship})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError('GCreateSpaceshipData', 'G__typename');
    }
    if (createSpaceship == null) {
      throw new BuiltValueNullFieldError(
          'GCreateSpaceshipData', 'createSpaceship');
    }
  }

  @override
  GCreateSpaceshipData rebuild(
          void Function(GCreateSpaceshipDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateSpaceshipDataBuilder toBuilder() =>
      new GCreateSpaceshipDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateSpaceshipData &&
        G__typename == other.G__typename &&
        createSpaceship == other.createSpaceship;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), createSpaceship.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateSpaceshipData')
          ..add('G__typename', G__typename)
          ..add('createSpaceship', createSpaceship))
        .toString();
  }
}

class GCreateSpaceshipDataBuilder
    implements Builder<GCreateSpaceshipData, GCreateSpaceshipDataBuilder> {
  _$GCreateSpaceshipData _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  GCreateSpaceshipData_createSpaceshipBuilder _createSpaceship;
  GCreateSpaceshipData_createSpaceshipBuilder get createSpaceship =>
      _$this._createSpaceship ??=
          new GCreateSpaceshipData_createSpaceshipBuilder();
  set createSpaceship(
          GCreateSpaceshipData_createSpaceshipBuilder createSpaceship) =>
      _$this._createSpaceship = createSpaceship;

  GCreateSpaceshipDataBuilder() {
    GCreateSpaceshipData._initializeBuilder(this);
  }

  GCreateSpaceshipDataBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _createSpaceship = _$v.createSpaceship?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateSpaceshipData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GCreateSpaceshipData;
  }

  @override
  void update(void Function(GCreateSpaceshipDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateSpaceshipData build() {
    _$GCreateSpaceshipData _$result;
    try {
      _$result = _$v ??
          new _$GCreateSpaceshipData._(
              G__typename: G__typename,
              createSpaceship: createSpaceship.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'createSpaceship';
        createSpaceship.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateSpaceshipData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateSpaceshipData_createSpaceship
    extends GCreateSpaceshipData_createSpaceship {
  @override
  final String G__typename;
  @override
  final String G_id;
  @override
  final String name;

  factory _$GCreateSpaceshipData_createSpaceship(
          [void Function(GCreateSpaceshipData_createSpaceshipBuilder)
              updates]) =>
      (new GCreateSpaceshipData_createSpaceshipBuilder()..update(updates))
          .build();

  _$GCreateSpaceshipData_createSpaceship._(
      {this.G__typename, this.G_id, this.name})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GCreateSpaceshipData_createSpaceship', 'G__typename');
    }
    if (G_id == null) {
      throw new BuiltValueNullFieldError(
          'GCreateSpaceshipData_createSpaceship', 'G_id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError(
          'GCreateSpaceshipData_createSpaceship', 'name');
    }
  }

  @override
  GCreateSpaceshipData_createSpaceship rebuild(
          void Function(GCreateSpaceshipData_createSpaceshipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateSpaceshipData_createSpaceshipBuilder toBuilder() =>
      new GCreateSpaceshipData_createSpaceshipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateSpaceshipData_createSpaceship &&
        G__typename == other.G__typename &&
        G_id == other.G_id &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), G_id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateSpaceshipData_createSpaceship')
          ..add('G__typename', G__typename)
          ..add('G_id', G_id)
          ..add('name', name))
        .toString();
  }
}

class GCreateSpaceshipData_createSpaceshipBuilder
    implements
        Builder<GCreateSpaceshipData_createSpaceship,
            GCreateSpaceshipData_createSpaceshipBuilder> {
  _$GCreateSpaceshipData_createSpaceship _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _G_id;
  String get G_id => _$this._G_id;
  set G_id(String G_id) => _$this._G_id = G_id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  GCreateSpaceshipData_createSpaceshipBuilder() {
    GCreateSpaceshipData_createSpaceship._initializeBuilder(this);
  }

  GCreateSpaceshipData_createSpaceshipBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _G_id = _$v.G_id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateSpaceshipData_createSpaceship other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GCreateSpaceshipData_createSpaceship;
  }

  @override
  void update(
      void Function(GCreateSpaceshipData_createSpaceshipBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateSpaceshipData_createSpaceship build() {
    final _$result = _$v ??
        new _$GCreateSpaceshipData_createSpaceship._(
            G__typename: G__typename, G_id: G_id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
