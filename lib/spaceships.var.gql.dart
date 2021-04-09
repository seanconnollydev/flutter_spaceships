// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_spaceships/schema.schema.gql.dart' as _i2;
import 'package:flutter_spaceships/serializers.gql.dart' as _i1;

part 'spaceships.var.gql.g.dart';

abstract class GGetSpaceshipsVars
    implements Built<GGetSpaceshipsVars, GGetSpaceshipsVarsBuilder> {
  GGetSpaceshipsVars._();

  factory GGetSpaceshipsVars([Function(GGetSpaceshipsVarsBuilder b) updates]) =
      _$GGetSpaceshipsVars;

  static Serializer<GGetSpaceshipsVars> get serializer =>
      _$gGetSpaceshipsVarsSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GGetSpaceshipsVars.serializer, this);
  static GGetSpaceshipsVars fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetSpaceshipsVars.serializer, json);
}

abstract class GCreateSpaceshipVars
    implements Built<GCreateSpaceshipVars, GCreateSpaceshipVarsBuilder> {
  GCreateSpaceshipVars._();

  factory GCreateSpaceshipVars(
          [Function(GCreateSpaceshipVarsBuilder b) updates]) =
      _$GCreateSpaceshipVars;

  _i2.GSpaceshipInput get data;
  static Serializer<GCreateSpaceshipVars> get serializer =>
      _$gCreateSpaceshipVarsSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GCreateSpaceshipVars.serializer, this);
  static GCreateSpaceshipVars fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateSpaceshipVars.serializer, json);
}
