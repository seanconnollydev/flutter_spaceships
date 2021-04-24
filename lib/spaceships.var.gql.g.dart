// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spaceships.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetSpaceshipsVars> _$gGetSpaceshipsVarsSerializer =
    new _$GGetSpaceshipsVarsSerializer();

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
