// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:flutter_spaceships/serializers.gql.dart' as _i6;
import 'package:flutter_spaceships/spaceships.ast.gql.dart' as _i5;
import 'package:flutter_spaceships/spaceships.data.gql.dart' as _i2;
import 'package:flutter_spaceships/spaceships.var.gql.dart' as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'spaceships.req.gql.g.dart';

abstract class GGetSpaceshipsReq
    implements
        Built<GGetSpaceshipsReq, GGetSpaceshipsReqBuilder>,
        _i1.OperationRequest<_i2.GGetSpaceshipsData, _i3.GGetSpaceshipsVars> {
  GGetSpaceshipsReq._();

  factory GGetSpaceshipsReq([Function(GGetSpaceshipsReqBuilder b) updates]) =
      _$GGetSpaceshipsReq;

  static void _initializeBuilder(GGetSpaceshipsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetSpaceships')
    ..executeOnListen = true;
  _i3.GGetSpaceshipsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @nullable
  String get requestId;
  @nullable
  @BuiltValueField(serialize: false)
  _i2.GGetSpaceshipsData Function(
      _i2.GGetSpaceshipsData, _i2.GGetSpaceshipsData) get updateResult;
  @nullable
  _i2.GGetSpaceshipsData get optimisticResponse;
  @nullable
  String get updateCacheHandlerKey;
  @nullable
  Map<String, dynamic> get updateCacheHandlerContext;
  @nullable
  _i1.FetchPolicy get fetchPolicy;
  @nullable
  bool get executeOnListen;
  @override
  _i2.GGetSpaceshipsData parseData(Map<String, dynamic> json) =>
      _i2.GGetSpaceshipsData.fromJson(json);
  static Serializer<GGetSpaceshipsReq> get serializer =>
      _$gGetSpaceshipsReqSerializer;
  Map<String, dynamic> toJson() =>
      _i6.serializers.serializeWith(GGetSpaceshipsReq.serializer, this);
  static GGetSpaceshipsReq fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetSpaceshipsReq.serializer, json);
}

abstract class GGetSpaceshipReq
    implements
        Built<GGetSpaceshipReq, GGetSpaceshipReqBuilder>,
        _i1.OperationRequest<_i2.GGetSpaceshipData, _i3.GGetSpaceshipVars> {
  GGetSpaceshipReq._();

  factory GGetSpaceshipReq([Function(GGetSpaceshipReqBuilder b) updates]) =
      _$GGetSpaceshipReq;

  static void _initializeBuilder(GGetSpaceshipReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetSpaceship')
    ..executeOnListen = true;
  _i3.GGetSpaceshipVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @nullable
  String get requestId;
  @nullable
  @BuiltValueField(serialize: false)
  _i2.GGetSpaceshipData Function(_i2.GGetSpaceshipData, _i2.GGetSpaceshipData)
      get updateResult;
  @nullable
  _i2.GGetSpaceshipData get optimisticResponse;
  @nullable
  String get updateCacheHandlerKey;
  @nullable
  Map<String, dynamic> get updateCacheHandlerContext;
  @nullable
  _i1.FetchPolicy get fetchPolicy;
  @nullable
  bool get executeOnListen;
  @override
  _i2.GGetSpaceshipData parseData(Map<String, dynamic> json) =>
      _i2.GGetSpaceshipData.fromJson(json);
  static Serializer<GGetSpaceshipReq> get serializer =>
      _$gGetSpaceshipReqSerializer;
  Map<String, dynamic> toJson() =>
      _i6.serializers.serializeWith(GGetSpaceshipReq.serializer, this);
  static GGetSpaceshipReq fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetSpaceshipReq.serializer, json);
}

abstract class GCreateSpaceshipReq
    implements
        Built<GCreateSpaceshipReq, GCreateSpaceshipReqBuilder>,
        _i1.OperationRequest<_i2.GCreateSpaceshipData,
            _i3.GCreateSpaceshipVars> {
  GCreateSpaceshipReq._();

  factory GCreateSpaceshipReq(
      [Function(GCreateSpaceshipReqBuilder b) updates]) = _$GCreateSpaceshipReq;

  static void _initializeBuilder(GCreateSpaceshipReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'CreateSpaceship')
    ..executeOnListen = true;
  _i3.GCreateSpaceshipVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @nullable
  String get requestId;
  @nullable
  @BuiltValueField(serialize: false)
  _i2.GCreateSpaceshipData Function(
      _i2.GCreateSpaceshipData, _i2.GCreateSpaceshipData) get updateResult;
  @nullable
  _i2.GCreateSpaceshipData get optimisticResponse;
  @nullable
  String get updateCacheHandlerKey;
  @nullable
  Map<String, dynamic> get updateCacheHandlerContext;
  @nullable
  _i1.FetchPolicy get fetchPolicy;
  @nullable
  bool get executeOnListen;
  @override
  _i2.GCreateSpaceshipData parseData(Map<String, dynamic> json) =>
      _i2.GCreateSpaceshipData.fromJson(json);
  static Serializer<GCreateSpaceshipReq> get serializer =>
      _$gCreateSpaceshipReqSerializer;
  Map<String, dynamic> toJson() =>
      _i6.serializers.serializeWith(GCreateSpaceshipReq.serializer, this);
  static GCreateSpaceshipReq fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCreateSpaceshipReq.serializer, json);
}

abstract class GUpdateSpaceshipReq
    implements
        Built<GUpdateSpaceshipReq, GUpdateSpaceshipReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateSpaceshipData,
            _i3.GUpdateSpaceshipVars> {
  GUpdateSpaceshipReq._();

  factory GUpdateSpaceshipReq(
      [Function(GUpdateSpaceshipReqBuilder b) updates]) = _$GUpdateSpaceshipReq;

  static void _initializeBuilder(GUpdateSpaceshipReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'UpdateSpaceship')
    ..executeOnListen = true;
  _i3.GUpdateSpaceshipVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @nullable
  String get requestId;
  @nullable
  @BuiltValueField(serialize: false)
  _i2.GUpdateSpaceshipData Function(
      _i2.GUpdateSpaceshipData, _i2.GUpdateSpaceshipData) get updateResult;
  @nullable
  _i2.GUpdateSpaceshipData get optimisticResponse;
  @nullable
  String get updateCacheHandlerKey;
  @nullable
  Map<String, dynamic> get updateCacheHandlerContext;
  @nullable
  _i1.FetchPolicy get fetchPolicy;
  @nullable
  bool get executeOnListen;
  @override
  _i2.GUpdateSpaceshipData parseData(Map<String, dynamic> json) =>
      _i2.GUpdateSpaceshipData.fromJson(json);
  static Serializer<GUpdateSpaceshipReq> get serializer =>
      _$gUpdateSpaceshipReqSerializer;
  Map<String, dynamic> toJson() =>
      _i6.serializers.serializeWith(GUpdateSpaceshipReq.serializer, this);
  static GUpdateSpaceshipReq fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GUpdateSpaceshipReq.serializer, json);
}

abstract class GDeleteSpaceshipReq
    implements
        Built<GDeleteSpaceshipReq, GDeleteSpaceshipReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteSpaceshipData,
            _i3.GDeleteSpaceshipVars> {
  GDeleteSpaceshipReq._();

  factory GDeleteSpaceshipReq(
      [Function(GDeleteSpaceshipReqBuilder b) updates]) = _$GDeleteSpaceshipReq;

  static void _initializeBuilder(GDeleteSpaceshipReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'DeleteSpaceship')
    ..executeOnListen = true;
  _i3.GDeleteSpaceshipVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  @nullable
  String get requestId;
  @nullable
  @BuiltValueField(serialize: false)
  _i2.GDeleteSpaceshipData Function(
      _i2.GDeleteSpaceshipData, _i2.GDeleteSpaceshipData) get updateResult;
  @nullable
  _i2.GDeleteSpaceshipData get optimisticResponse;
  @nullable
  String get updateCacheHandlerKey;
  @nullable
  Map<String, dynamic> get updateCacheHandlerContext;
  @nullable
  _i1.FetchPolicy get fetchPolicy;
  @nullable
  bool get executeOnListen;
  @override
  _i2.GDeleteSpaceshipData parseData(Map<String, dynamic> json) =>
      _i2.GDeleteSpaceshipData.fromJson(json);
  static Serializer<GDeleteSpaceshipReq> get serializer =>
      _$gDeleteSpaceshipReqSerializer;
  Map<String, dynamic> toJson() =>
      _i6.serializers.serializeWith(GDeleteSpaceshipReq.serializer, this);
  static GDeleteSpaceshipReq fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GDeleteSpaceshipReq.serializer, json);
}
