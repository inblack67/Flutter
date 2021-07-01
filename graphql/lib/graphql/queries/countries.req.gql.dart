// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:graphql/graphql/queries/countries.ast.gql.dart' as _i5;
import 'package:graphql/graphql/queries/countries.data.gql.dart' as _i2;
import 'package:graphql/graphql/queries/countries.var.gql.dart' as _i3;
import 'package:graphql/graphql/serializers.gql.dart' as _i6;

part 'countries.req.gql.g.dart';

abstract class GfetchCountriesReq
    implements
        Built<GfetchCountriesReq, GfetchCountriesReqBuilder>,
        _i1.OperationRequest<_i2.GfetchCountriesData, _i3.GfetchCountriesVars> {
  GfetchCountriesReq._();

  factory GfetchCountriesReq([Function(GfetchCountriesReqBuilder b) updates]) =
      _$GfetchCountriesReq;

  static void _initializeBuilder(GfetchCountriesReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'fetchCountries')
    ..executeOnListen = true;
  _i3.GfetchCountriesVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GfetchCountriesData? Function(
      _i2.GfetchCountriesData?, _i2.GfetchCountriesData?)? get updateResult;
  _i2.GfetchCountriesData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GfetchCountriesData? parseData(Map<String, dynamic> json) =>
      _i2.GfetchCountriesData.fromJson(json);
  static Serializer<GfetchCountriesReq> get serializer =>
      _$gfetchCountriesReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GfetchCountriesReq.serializer, this)
          as Map<String, dynamic>);
  static GfetchCountriesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GfetchCountriesReq.serializer, json);
}
