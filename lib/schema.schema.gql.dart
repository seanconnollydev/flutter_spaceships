// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_spaceships/serializers.gql.dart' as _i2;
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i1;

part 'schema.schema.gql.g.dart';

abstract class GDate implements Built<GDate, GDateBuilder> {
  GDate._();

  factory GDate([String value]) =>
      _$GDate((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDate> get serializer => _i1.DefaultScalarSerializer<GDate>(
      (Object serialized) => GDate(serialized));
}

abstract class GLong implements Built<GLong, GLongBuilder> {
  GLong._();

  factory GLong([String value]) =>
      _$GLong((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GLong> get serializer => _i1.DefaultScalarSerializer<GLong>(
      (Object serialized) => GLong(serialized));
}

abstract class GSpaceshipInput
    implements Built<GSpaceshipInput, GSpaceshipInputBuilder> {
  GSpaceshipInput._();

  factory GSpaceshipInput([Function(GSpaceshipInputBuilder b) updates]) =
      _$GSpaceshipInput;

  String get name;
  static Serializer<GSpaceshipInput> get serializer =>
      _$gSpaceshipInputSerializer;
  Map<String, dynamic> toJson() =>
      _i2.serializers.serializeWith(GSpaceshipInput.serializer, this);
  static GSpaceshipInput fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GSpaceshipInput.serializer, json);
}

abstract class GTime implements Built<GTime, GTimeBuilder> {
  GTime._();

  factory GTime([String value]) =>
      _$GTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GTime> get serializer => _i1.DefaultScalarSerializer<GTime>(
      (Object serialized) => GTime(serialized));
}
