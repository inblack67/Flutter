// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GfetchCountriesData> _$gfetchCountriesDataSerializer =
    new _$GfetchCountriesDataSerializer();
Serializer<GfetchCountriesData_countries>
    _$gfetchCountriesDataCountriesSerializer =
    new _$GfetchCountriesData_countriesSerializer();

class _$GfetchCountriesDataSerializer
    implements StructuredSerializer<GfetchCountriesData> {
  @override
  final Iterable<Type> types = const [
    GfetchCountriesData,
    _$GfetchCountriesData
  ];
  @override
  final String wireName = 'GfetchCountriesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchCountriesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'countries',
      serializers.serialize(object.countries,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GfetchCountriesData_countries)])),
    ];

    return result;
  }

  @override
  GfetchCountriesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchCountriesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'countries':
          result.countries.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GfetchCountriesData_countries)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchCountriesData_countriesSerializer
    implements StructuredSerializer<GfetchCountriesData_countries> {
  @override
  final Iterable<Type> types = const [
    GfetchCountriesData_countries,
    _$GfetchCountriesData_countries
  ];
  @override
  final String wireName = 'GfetchCountriesData_countries';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GfetchCountriesData_countries object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'native',
      serializers.serialize(object.native,
          specifiedType: const FullType(String)),
      'emoji',
      serializers.serialize(object.emoji,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GfetchCountriesData_countries deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfetchCountriesData_countriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'native':
          result.native = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'emoji':
          result.emoji = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GfetchCountriesData extends GfetchCountriesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GfetchCountriesData_countries> countries;

  factory _$GfetchCountriesData(
          [void Function(GfetchCountriesDataBuilder)? updates]) =>
      (new GfetchCountriesDataBuilder()..update(updates)).build();

  _$GfetchCountriesData._({required this.G__typename, required this.countries})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GfetchCountriesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        countries, 'GfetchCountriesData', 'countries');
  }

  @override
  GfetchCountriesData rebuild(
          void Function(GfetchCountriesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchCountriesDataBuilder toBuilder() =>
      new GfetchCountriesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchCountriesData &&
        G__typename == other.G__typename &&
        countries == other.countries;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), countries.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GfetchCountriesData')
          ..add('G__typename', G__typename)
          ..add('countries', countries))
        .toString();
  }
}

class GfetchCountriesDataBuilder
    implements Builder<GfetchCountriesData, GfetchCountriesDataBuilder> {
  _$GfetchCountriesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GfetchCountriesData_countries>? _countries;
  ListBuilder<GfetchCountriesData_countries> get countries =>
      _$this._countries ??= new ListBuilder<GfetchCountriesData_countries>();
  set countries(ListBuilder<GfetchCountriesData_countries>? countries) =>
      _$this._countries = countries;

  GfetchCountriesDataBuilder() {
    GfetchCountriesData._initializeBuilder(this);
  }

  GfetchCountriesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _countries = $v.countries.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchCountriesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchCountriesData;
  }

  @override
  void update(void Function(GfetchCountriesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GfetchCountriesData build() {
    _$GfetchCountriesData _$result;
    try {
      _$result = _$v ??
          new _$GfetchCountriesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GfetchCountriesData', 'G__typename'),
              countries: countries.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'countries';
        countries.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GfetchCountriesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GfetchCountriesData_countries extends GfetchCountriesData_countries {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String name;
  @override
  final String native;
  @override
  final String emoji;

  factory _$GfetchCountriesData_countries(
          [void Function(GfetchCountriesData_countriesBuilder)? updates]) =>
      (new GfetchCountriesData_countriesBuilder()..update(updates)).build();

  _$GfetchCountriesData_countries._(
      {required this.G__typename,
      required this.code,
      required this.name,
      required this.native,
      required this.emoji})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GfetchCountriesData_countries', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, 'GfetchCountriesData_countries', 'code');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GfetchCountriesData_countries', 'name');
    BuiltValueNullFieldError.checkNotNull(
        native, 'GfetchCountriesData_countries', 'native');
    BuiltValueNullFieldError.checkNotNull(
        emoji, 'GfetchCountriesData_countries', 'emoji');
  }

  @override
  GfetchCountriesData_countries rebuild(
          void Function(GfetchCountriesData_countriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfetchCountriesData_countriesBuilder toBuilder() =>
      new GfetchCountriesData_countriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GfetchCountriesData_countries &&
        G__typename == other.G__typename &&
        code == other.code &&
        name == other.name &&
        native == other.native &&
        emoji == other.emoji;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), code.hashCode),
                name.hashCode),
            native.hashCode),
        emoji.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GfetchCountriesData_countries')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('name', name)
          ..add('native', native)
          ..add('emoji', emoji))
        .toString();
  }
}

class GfetchCountriesData_countriesBuilder
    implements
        Builder<GfetchCountriesData_countries,
            GfetchCountriesData_countriesBuilder> {
  _$GfetchCountriesData_countries? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _native;
  String? get native => _$this._native;
  set native(String? native) => _$this._native = native;

  String? _emoji;
  String? get emoji => _$this._emoji;
  set emoji(String? emoji) => _$this._emoji = emoji;

  GfetchCountriesData_countriesBuilder() {
    GfetchCountriesData_countries._initializeBuilder(this);
  }

  GfetchCountriesData_countriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _name = $v.name;
      _native = $v.native;
      _emoji = $v.emoji;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GfetchCountriesData_countries other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GfetchCountriesData_countries;
  }

  @override
  void update(void Function(GfetchCountriesData_countriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GfetchCountriesData_countries build() {
    final _$result = _$v ??
        new _$GfetchCountriesData_countries._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GfetchCountriesData_countries', 'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, 'GfetchCountriesData_countries', 'code'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GfetchCountriesData_countries', 'name'),
            native: BuiltValueNullFieldError.checkNotNull(
                native, 'GfetchCountriesData_countries', 'native'),
            emoji: BuiltValueNullFieldError.checkNotNull(
                emoji, 'GfetchCountriesData_countries', 'emoji'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
