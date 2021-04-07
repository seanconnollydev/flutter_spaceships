// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
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
