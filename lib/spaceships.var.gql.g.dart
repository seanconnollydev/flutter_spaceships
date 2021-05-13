// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spaceships.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetSpaceshipsVars> _$gGetSpaceshipsVarsSerializer =
    new _$GGetSpaceshipsVarsSerializer();
Serializer<GGetSpaceshipVars> _$gGetSpaceshipVarsSerializer =
    new _$GGetSpaceshipVarsSerializer();
Serializer<GCreateSpaceshipVars> _$gCreateSpaceshipVarsSerializer =
    new _$GCreateSpaceshipVarsSerializer();

class _$GGetSpaceshipsVarsSerializer
    implements StructuredSerializer<GGetSpaceshipsVars> {
  @override
  final Iterable<Type> types = const [GGetSpaceshipsVars, _$GGetSpaceshipsVars];
  @override
  final String wireName = 'GGetSpaceshipsVars';

  @override
  Iterable<Object> serialize(Serializers serializers, GGetSpaceshipsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  GGetSpaceshipsVars deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetSpaceshipsVarsBuilder().build();
  }
}

class _$GGetSpaceshipVarsSerializer
    implements StructuredSerializer<GGetSpaceshipVars> {
  @override
  final Iterable<Type> types = const [GGetSpaceshipVars, _$GGetSpaceshipVars];
  @override
  final String wireName = 'GGetSpaceshipVars';

  @override
  Iterable<Object> serialize(Serializers serializers, GGetSpaceshipVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetSpaceshipVars deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSpaceshipVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateSpaceshipVarsSerializer
    implements StructuredSerializer<GCreateSpaceshipVars> {
  @override
  final Iterable<Type> types = const [
    GCreateSpaceshipVars,
    _$GCreateSpaceshipVars
  ];
  @override
  final String wireName = 'GCreateSpaceshipVars';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GCreateSpaceshipVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(_i2.GSpaceshipInput)),
    ];

    return result;
  }

  @override
  GCreateSpaceshipVars deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateSpaceshipVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GSpaceshipInput))
              as _i2.GSpaceshipInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetSpaceshipsVars extends GGetSpaceshipsVars {
  factory _$GGetSpaceshipsVars(
          [void Function(GGetSpaceshipsVarsBuilder) updates]) =>
      (new GGetSpaceshipsVarsBuilder()..update(updates)).build();

  _$GGetSpaceshipsVars._() : super._();

  @override
  GGetSpaceshipsVars rebuild(
          void Function(GGetSpaceshipsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSpaceshipsVarsBuilder toBuilder() =>
      new GGetSpaceshipsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSpaceshipsVars;
  }

  @override
  int get hashCode {
    return 545127877;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetSpaceshipsVars').toString();
  }
}

class GGetSpaceshipsVarsBuilder
    implements Builder<GGetSpaceshipsVars, GGetSpaceshipsVarsBuilder> {
  _$GGetSpaceshipsVars _$v;

  GGetSpaceshipsVarsBuilder();

  @override
  void replace(GGetSpaceshipsVars other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GGetSpaceshipsVars;
  }

  @override
  void update(void Function(GGetSpaceshipsVarsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetSpaceshipsVars build() {
    final _$result = _$v ?? new _$GGetSpaceshipsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GGetSpaceshipVars extends GGetSpaceshipVars {
  @override
  final String id;

  factory _$GGetSpaceshipVars(
          [void Function(GGetSpaceshipVarsBuilder) updates]) =>
      (new GGetSpaceshipVarsBuilder()..update(updates)).build();

  _$GGetSpaceshipVars._({this.id}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('GGetSpaceshipVars', 'id');
    }
  }

  @override
  GGetSpaceshipVars rebuild(void Function(GGetSpaceshipVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSpaceshipVarsBuilder toBuilder() =>
      new GGetSpaceshipVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSpaceshipVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetSpaceshipVars')..add('id', id))
        .toString();
  }
}

class GGetSpaceshipVarsBuilder
    implements Builder<GGetSpaceshipVars, GGetSpaceshipVarsBuilder> {
  _$GGetSpaceshipVars _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  GGetSpaceshipVarsBuilder();

  GGetSpaceshipVarsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetSpaceshipVars other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GGetSpaceshipVars;
  }

  @override
  void update(void Function(GGetSpaceshipVarsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetSpaceshipVars build() {
    final _$result = _$v ?? new _$GGetSpaceshipVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

class _$GCreateSpaceshipVars extends GCreateSpaceshipVars {
  @override
  final _i2.GSpaceshipInput data;

  factory _$GCreateSpaceshipVars(
          [void Function(GCreateSpaceshipVarsBuilder) updates]) =>
      (new GCreateSpaceshipVarsBuilder()..update(updates)).build();

  _$GCreateSpaceshipVars._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('GCreateSpaceshipVars', 'data');
    }
  }

  @override
  GCreateSpaceshipVars rebuild(
          void Function(GCreateSpaceshipVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateSpaceshipVarsBuilder toBuilder() =>
      new GCreateSpaceshipVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateSpaceshipVars && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateSpaceshipVars')
          ..add('data', data))
        .toString();
  }
}

class GCreateSpaceshipVarsBuilder
    implements Builder<GCreateSpaceshipVars, GCreateSpaceshipVarsBuilder> {
  _$GCreateSpaceshipVars _$v;

  _i2.GSpaceshipInputBuilder _data;
  _i2.GSpaceshipInputBuilder get data =>
      _$this._data ??= new _i2.GSpaceshipInputBuilder();
  set data(_i2.GSpaceshipInputBuilder data) => _$this._data = data;

  GCreateSpaceshipVarsBuilder();

  GCreateSpaceshipVarsBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateSpaceshipVars other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GCreateSpaceshipVars;
  }

  @override
  void update(void Function(GCreateSpaceshipVarsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateSpaceshipVars build() {
    _$GCreateSpaceshipVars _$result;
    try {
      _$result = _$v ?? new _$GCreateSpaceshipVars._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateSpaceshipVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
