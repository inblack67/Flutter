import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:graphql/graphql/queries/countries.data.gql.dart'
    show GfetchCountriesData, GfetchCountriesData_countries;
import 'package:graphql/graphql/queries/countries.req.gql.dart'
    show GfetchCountriesReq;
import 'package:graphql/graphql/queries/countries.var.gql.dart'
    show GfetchCountriesVars;
import 'package:graphql/graphql/schema.schema.gql.dart'
    show
        GCacheControlScope,
        GContinentFilterInput,
        GCountryFilterInput,
        GLanguageFilterInput,
        GStringQueryOperatorInput,
        GUpload;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCacheControlScope,
  GContinentFilterInput,
  GCountryFilterInput,
  GLanguageFilterInput,
  GStringQueryOperatorInput,
  GUpload,
  GfetchCountriesData,
  GfetchCountriesData_countries,
  GfetchCountriesReq,
  GfetchCountriesVars
])
final Serializers serializers = _serializersBuilder.build();
