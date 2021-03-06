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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
