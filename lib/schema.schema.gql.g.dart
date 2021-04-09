// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSpaceshipInput> _$gSpaceshipInputSerializer =
    new _$GSpaceshipInputSerializer();

class _$GSpaceshipInputSerializer
    implements StructuredSerializer<GSpaceshipInput> {
  @override
  final Iterable<Type> types = const [GSpaceshipInput, _$GSpaceshipInput];
  @override
  final String wireName = 'GSpaceshipInput';

  @override
  Iterable<Object> serialize(Serializers serializers, GSpaceshipInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSpaceshipInput deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSpaceshipInputBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GDate extends GDate {
  @override
  final String value;

  factory _$GDate([void Function(GDateBuilder) updates]) =>
      (new GDateBuilder()..update(updates)).build();

  _$GDate._({this.value}) : super._() {
    if (value == null) {
      throw new BuiltValueNullFieldError('GDate', 'value');
    }
  }

  @override
  GDate rebuild(void Function(GDateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDateBuilder toBuilder() => new GDateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDate && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDate')..add('value', value))
        .toString();
  }
}

class GDateBuilder implements Builder<GDate, GDateBuilder> {
  _$GDate _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  GDateBuilder();

  GDateBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GDate;
  }

  @override
  void update(void Function(GDateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDate build() {
    final _$result = _$v ?? new _$GDate._(value: value);
    replace(_$result);
    return _$result;
  }
}

class _$GLong extends GLong {
  @override
  final String value;

  factory _$GLong([void Function(GLongBuilder) updates]) =>
      (new GLongBuilder()..update(updates)).build();

  _$GLong._({this.value}) : super._() {
    if (value == null) {
      throw new BuiltValueNullFieldError('GLong', 'value');
    }
  }

  @override
  GLong rebuild(void Function(GLongBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLongBuilder toBuilder() => new GLongBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLong && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLong')..add('value', value))
        .toString();
  }
}

class GLongBuilder implements Builder<GLong, GLongBuilder> {
  _$GLong _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  GLongBuilder();

  GLongBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLong other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GLong;
  }

  @override
  void update(void Function(GLongBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLong build() {
    final _$result = _$v ?? new _$GLong._(value: value);
    replace(_$result);
    return _$result;
  }
}

class _$GSpaceshipInput extends GSpaceshipInput {
  @override
  final String name;

  factory _$GSpaceshipInput([void Function(GSpaceshipInputBuilder) updates]) =>
      (new GSpaceshipInputBuilder()..update(updates)).build();

  _$GSpaceshipInput._({this.name}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('GSpaceshipInput', 'name');
    }
  }

  @override
  GSpaceshipInput rebuild(void Function(GSpaceshipInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSpaceshipInputBuilder toBuilder() =>
      new GSpaceshipInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSpaceshipInput && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSpaceshipInput')..add('name', name))
        .toString();
  }
}

class GSpaceshipInputBuilder
    implements Builder<GSpaceshipInput, GSpaceshipInputBuilder> {
  _$GSpaceshipInput _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  GSpaceshipInputBuilder();

  GSpaceshipInputBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSpaceshipInput other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GSpaceshipInput;
  }

  @override
  void update(void Function(GSpaceshipInputBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSpaceshipInput build() {
    final _$result = _$v ?? new _$GSpaceshipInput._(name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GTime extends GTime {
  @override
  final String value;

  factory _$GTime([void Function(GTimeBuilder) updates]) =>
      (new GTimeBuilder()..update(updates)).build();

  _$GTime._({this.value}) : super._() {
    if (value == null) {
      throw new BuiltValueNullFieldError('GTime', 'value');
    }
  }

  @override
  GTime rebuild(void Function(GTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTimeBuilder toBuilder() => new GTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTime && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GTime')..add('value', value))
        .toString();
  }
}

class GTimeBuilder implements Builder<GTime, GTimeBuilder> {
  _$GTime _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  GTimeBuilder();

  GTimeBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTime other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GTime;
  }

  @override
  void update(void Function(GTimeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GTime build() {
    final _$result = _$v ?? new _$GTime._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
