// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql/graphql/serializers.gql.dart' as _i1;

part 'countries.var.gql.g.dart';

abstract class GfetchCountriesVars
    implements Built<GfetchCountriesVars, GfetchCountriesVarsBuilder> {
  GfetchCountriesVars._();

  factory GfetchCountriesVars(
      [Function(GfetchCountriesVarsBuilder b) updates]) = _$GfetchCountriesVars;

  static Serializer<GfetchCountriesVars> get serializer =>
      _$gfetchCountriesVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GfetchCountriesVars.serializer, this)
          as Map<String, dynamic>);
  static GfetchCountriesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GfetchCountriesVars.serializer, json);
}
