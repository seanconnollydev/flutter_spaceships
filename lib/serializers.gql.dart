import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:flutter_spaceships/schema.schema.gql.dart'
    show GDate, GLong, GSpaceshipInput, GTime;
import 'package:flutter_spaceships/spaceships.data.gql.dart'
    show
        GCreateSpaceshipData,
        GCreateSpaceshipData_createSpaceship,
        GGetSpaceshipsData,
        GGetSpaceshipsData_spaceships,
        GGetSpaceshipsData_spaceships_data;
import 'package:flutter_spaceships/spaceships.req.gql.dart'
    show GCreateSpaceshipReq, GGetSpaceshipsReq;
import 'package:flutter_spaceships/spaceships.var.gql.dart'
    show GCreateSpaceshipVars, GGetSpaceshipsVars;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCreateSpaceshipData,
  GCreateSpaceshipData_createSpaceship,
  GCreateSpaceshipReq,
  GCreateSpaceshipVars,
  GDate,
  GGetSpaceshipsData,
  GGetSpaceshipsData_spaceships,
  GGetSpaceshipsData_spaceships_data,
  GGetSpaceshipsReq,
  GGetSpaceshipsVars,
  GLong,
  GSpaceshipInput,
  GTime
])
final Serializers serializers = _serializersBuilder.build();
