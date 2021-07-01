// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GfetchCountriesVars> _$gfetchCountriesVarsSerializer =
    new _$GfetchCountriesVarsSerializer();

class _$GfetchCountriesVarsSerializer
    implements StructuredSerializer<GfetchCountriesVars> {
  @override
  final Iterable<Type> types = const [
    GfetchCountriesVars,
    _$GfetchCountriesVars
  ];
  @override
  final String wireName = 'GfetchCountriesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchCountriesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GfetchCountriesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GfetchCountriesVarsBuilder().build();
  }
}

class _$GfetchCountriesVars extends GfetchCountriesVars {
  factory _$GfetchCountriesVars(
          [void Function(GfetchCountriesVarsBuilder)? updates]) =>
      (new GfetchCountriesVarsBuilder()..update(updates)).build();

  _$GfetchCountriesVars._() : super._();

  @override
  GfetchCountriesVars rebuild(
          void Function(GfetchCountriesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchCountriesVarsBuilder toBuilder() =>
      new GfetchCountriesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchCountriesVars;
  }

  @override
  int get hashCode {
    return 211582486;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GfetchCountriesVars').toString();
  }
}

class GfetchCountriesVarsBuilder
    implements Builder<GfetchCountriesVars, GfetchCountriesVarsBuilder> {
  _$GfetchCountriesVars? _$v;

  GfetchCountriesVarsBuilder();

  @override
  void replace(GfetchCountriesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchCountriesVars;
  }

  @override
  void update(void Function(GfetchCountriesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GfetchCountriesVars build() {
    final _$result = _$v ?? new _$GfetchCountriesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
