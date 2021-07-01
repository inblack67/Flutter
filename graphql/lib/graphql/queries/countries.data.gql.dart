// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql/graphql/serializers.gql.dart' as _i1;

part 'countries.data.gql.g.dart';

abstract class GfetchCountriesData
    implements Built<GfetchCountriesData, GfetchCountriesDataBuilder> {
  GfetchCountriesData._();

  factory GfetchCountriesData(
      [Function(GfetchCountriesDataBuilder b) updates]) = _$GfetchCountriesData;

  static void _initializeBuilder(GfetchCountriesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GfetchCountriesData_countries> get countries;
  static Serializer<GfetchCountriesData> get serializer =>
      _$gfetchCountriesDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GfetchCountriesData.serializer, this)
          as Map<String, dynamic>);
  static GfetchCountriesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GfetchCountriesData.serializer, json);
}

abstract class GfetchCountriesData_countries
    implements
        Built<GfetchCountriesData_countries,
            GfetchCountriesData_countriesBuilder> {
  GfetchCountriesData_countries._();

  factory GfetchCountriesData_countries(
          [Function(GfetchCountriesData_countriesBuilder b) updates]) =
      _$GfetchCountriesData_countries;

  static void _initializeBuilder(GfetchCountriesData_countriesBuilder b) =>
      b..G__typename = 'Country';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get code;
  String get name;
  String get native;
  String get emoji;
  static Serializer<GfetchCountriesData_countries> get serializer =>
      _$gfetchCountriesDataCountriesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GfetchCountriesData_countries.serializer, this) as Map<String, dynamic>);
  static GfetchCountriesData_countries? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GfetchCountriesData_countries.serializer, json);
}
