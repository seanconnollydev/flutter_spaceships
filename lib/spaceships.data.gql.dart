// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_spaceships/serializers.gql.dart' as _i1;

part 'spaceships.data.gql.g.dart';

abstract class GGetSpaceshipsData
    implements Built<GGetSpaceshipsData, GGetSpaceshipsDataBuilder> {
  GGetSpaceshipsData._();

  factory GGetSpaceshipsData([Function(GGetSpaceshipsDataBuilder b) updates]) =
      _$GGetSpaceshipsData;

  static void _initializeBuilder(GGetSpaceshipsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetSpaceshipsData_spaceships get spaceships;
  static Serializer<GGetSpaceshipsData> get serializer =>
      _$gGetSpaceshipsDataSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GGetSpaceshipsData.serializer, this);
  static GGetSpaceshipsData fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetSpaceshipsData.serializer, json);
}

abstract class GGetSpaceshipsData_spaceships
    implements
        Built<GGetSpaceshipsData_spaceships,
            GGetSpaceshipsData_spaceshipsBuilder> {
  GGetSpaceshipsData_spaceships._();

  factory GGetSpaceshipsData_spaceships(
          [Function(GGetSpaceshipsData_spaceshipsBuilder b) updates]) =
      _$GGetSpaceshipsData_spaceships;

  static void _initializeBuilder(GGetSpaceshipsData_spaceshipsBuilder b) =>
      b..G__typename = 'SpaceshipPage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @nullable
  BuiltList<GGetSpaceshipsData_spaceships_data> get data;
  static Serializer<GGetSpaceshipsData_spaceships> get serializer =>
      _$gGetSpaceshipsDataSpaceshipsSerializer;
  Map<String, dynamic> toJson() => _i1.serializers
      .serializeWith(GGetSpaceshipsData_spaceships.serializer, this);
  static GGetSpaceshipsData_spaceships fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetSpaceshipsData_spaceships.serializer, json);
}

abstract class GGetSpaceshipsData_spaceships_data
    implements
        Built<GGetSpaceshipsData_spaceships_data,
            GGetSpaceshipsData_spaceships_dataBuilder> {
  GGetSpaceshipsData_spaceships_data._();

  factory GGetSpaceshipsData_spaceships_data(
          [Function(GGetSpaceshipsData_spaceships_dataBuilder b) updates]) =
      _$GGetSpaceshipsData_spaceships_data;

  static void _initializeBuilder(GGetSpaceshipsData_spaceships_dataBuilder b) =>
      b..G__typename = 'Spaceship';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @BuiltValueField(wireName: '_id')
  String get G_id;
  String get name;
  static Serializer<GGetSpaceshipsData_spaceships_data> get serializer =>
      _$gGetSpaceshipsDataSpaceshipsDataSerializer;
  Map<String, dynamic> toJson() => _i1.serializers
      .serializeWith(GGetSpaceshipsData_spaceships_data.serializer, this);
  static GGetSpaceshipsData_spaceships_data fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetSpaceshipsData_spaceships_data.serializer, json);
}

abstract class GCreateSpaceshipData
    implements Built<GCreateSpaceshipData, GCreateSpaceshipDataBuilder> {
  GCreateSpaceshipData._();

  factory GCreateSpaceshipData(
          [Function(GCreateSpaceshipDataBuilder b) updates]) =
      _$GCreateSpaceshipData;

  static void _initializeBuilder(GCreateSpaceshipDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateSpaceshipData_createSpaceship get createSpaceship;
  static Serializer<GCreateSpaceshipData> get serializer =>
      _$gCreateSpaceshipDataSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GCreateSpaceshipData.serializer, this);
  static GCreateSpaceshipData fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateSpaceshipData.serializer, json);
}

abstract class GCreateSpaceshipData_createSpaceship
    implements
        Built<GCreateSpaceshipData_createSpaceship,
            GCreateSpaceshipData_createSpaceshipBuilder> {
  GCreateSpaceshipData_createSpaceship._();

  factory GCreateSpaceshipData_createSpaceship(
          [Function(GCreateSpaceshipData_createSpaceshipBuilder b) updates]) =
      _$GCreateSpaceshipData_createSpaceship;

  static void _initializeBuilder(
          GCreateSpaceshipData_createSpaceshipBuilder b) =>
      b..G__typename = 'Spaceship';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @BuiltValueField(wireName: '_id')
  String get G_id;
  static Serializer<GCreateSpaceshipData_createSpaceship> get serializer =>
      _$gCreateSpaceshipDataCreateSpaceshipSerializer;
  Map<String, dynamic> toJson() => _i1.serializers
      .serializeWith(GCreateSpaceshipData_createSpaceship.serializer, this);
  static GCreateSpaceshipData_createSpaceship fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCreateSpaceshipData_createSpaceship.serializer, json);
}
