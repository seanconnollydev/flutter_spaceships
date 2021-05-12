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

abstract class GGetSpaceshipData
    implements Built<GGetSpaceshipData, GGetSpaceshipDataBuilder> {
  GGetSpaceshipData._();

  factory GGetSpaceshipData([Function(GGetSpaceshipDataBuilder b) updates]) =
      _$GGetSpaceshipData;

  static void _initializeBuilder(GGetSpaceshipDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @nullable
  GGetSpaceshipData_findSpaceshipByID get findSpaceshipByID;
  static Serializer<GGetSpaceshipData> get serializer =>
      _$gGetSpaceshipDataSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GGetSpaceshipData.serializer, this);
  static GGetSpaceshipData fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetSpaceshipData.serializer, json);
}

abstract class GGetSpaceshipData_findSpaceshipByID
    implements
        Built<GGetSpaceshipData_findSpaceshipByID,
            GGetSpaceshipData_findSpaceshipByIDBuilder> {
  GGetSpaceshipData_findSpaceshipByID._();

  factory GGetSpaceshipData_findSpaceshipByID(
          [Function(GGetSpaceshipData_findSpaceshipByIDBuilder b) updates]) =
      _$GGetSpaceshipData_findSpaceshipByID;

  static void _initializeBuilder(
          GGetSpaceshipData_findSpaceshipByIDBuilder b) =>
      b..G__typename = 'Spaceship';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @BuiltValueField(wireName: '_id')
  String get G_id;
  String get name;
  static Serializer<GGetSpaceshipData_findSpaceshipByID> get serializer =>
      _$gGetSpaceshipDataFindSpaceshipByIDSerializer;
  Map<String, dynamic> toJson() => _i1.serializers
      .serializeWith(GGetSpaceshipData_findSpaceshipByID.serializer, this);
  static GGetSpaceshipData_findSpaceshipByID fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetSpaceshipData_findSpaceshipByID.serializer, json);
}

abstract class GUpdateSpaceshipData
    implements Built<GUpdateSpaceshipData, GUpdateSpaceshipDataBuilder> {
  GUpdateSpaceshipData._();

  factory GUpdateSpaceshipData(
          [Function(GUpdateSpaceshipDataBuilder b) updates]) =
      _$GUpdateSpaceshipData;

  static void _initializeBuilder(GUpdateSpaceshipDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @nullable
  GUpdateSpaceshipData_updateSpaceship get updateSpaceship;
  static Serializer<GUpdateSpaceshipData> get serializer =>
      _$gUpdateSpaceshipDataSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GUpdateSpaceshipData.serializer, this);
  static GUpdateSpaceshipData fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdateSpaceshipData.serializer, json);
}

abstract class GUpdateSpaceshipData_updateSpaceship
    implements
        Built<GUpdateSpaceshipData_updateSpaceship,
            GUpdateSpaceshipData_updateSpaceshipBuilder> {
  GUpdateSpaceshipData_updateSpaceship._();

  factory GUpdateSpaceshipData_updateSpaceship(
          [Function(GUpdateSpaceshipData_updateSpaceshipBuilder b) updates]) =
      _$GUpdateSpaceshipData_updateSpaceship;

  static void _initializeBuilder(
          GUpdateSpaceshipData_updateSpaceshipBuilder b) =>
      b..G__typename = 'Spaceship';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @BuiltValueField(wireName: '_id')
  String get G_id;
  static Serializer<GUpdateSpaceshipData_updateSpaceship> get serializer =>
      _$gUpdateSpaceshipDataUpdateSpaceshipSerializer;
  Map<String, dynamic> toJson() => _i1.serializers
      .serializeWith(GUpdateSpaceshipData_updateSpaceship.serializer, this);
  static GUpdateSpaceshipData_updateSpaceship fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GUpdateSpaceshipData_updateSpaceship.serializer, json);
}
