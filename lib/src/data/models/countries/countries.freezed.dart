// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Countries _$CountriesFromJson(Map<String, dynamic> json) {
  return _Countries.fromJson(json);
}

/// @nodoc
mixin _$Countries {
  List<CountryModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountriesCopyWith<Countries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesCopyWith<$Res> {
  factory $CountriesCopyWith(Countries value, $Res Function(Countries) then) =
      _$CountriesCopyWithImpl<$Res, Countries>;
  @useResult
  $Res call({List<CountryModel>? items});
}

/// @nodoc
class _$CountriesCopyWithImpl<$Res, $Val extends Countries>
    implements $CountriesCopyWith<$Res> {
  _$CountriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountriesCopyWith<$Res> implements $CountriesCopyWith<$Res> {
  factory _$$_CountriesCopyWith(
          _$_Countries value, $Res Function(_$_Countries) then) =
      __$$_CountriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CountryModel>? items});
}

/// @nodoc
class __$$_CountriesCopyWithImpl<$Res>
    extends _$CountriesCopyWithImpl<$Res, _$_Countries>
    implements _$$_CountriesCopyWith<$Res> {
  __$$_CountriesCopyWithImpl(
      _$_Countries _value, $Res Function(_$_Countries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_Countries(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Countries implements _Countries {
  const _$_Countries({final List<CountryModel>? items}) : _items = items;

  factory _$_Countries.fromJson(Map<String, dynamic> json) =>
      _$$_CountriesFromJson(json);

  final List<CountryModel>? _items;
  @override
  List<CountryModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Countries(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Countries &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountriesCopyWith<_$_Countries> get copyWith =>
      __$$_CountriesCopyWithImpl<_$_Countries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountriesToJson(
      this,
    );
  }
}

abstract class _Countries implements Countries {
  const factory _Countries({final List<CountryModel>? items}) = _$_Countries;

  factory _Countries.fromJson(Map<String, dynamic> json) =
      _$_Countries.fromJson;

  @override
  List<CountryModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_CountriesCopyWith<_$_Countries> get copyWith =>
      throw _privateConstructorUsedError;
}

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return _CountryModel.fromJson(json);
}

/// @nodoc
mixin _$CountryModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name1 => throw _privateConstructorUsedError;
  String? get name2 => throw _privateConstructorUsedError;
  String? get name3 => throw _privateConstructorUsedError;
  String? get ename => throw _privateConstructorUsedError;
  String? get kod => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'fond_id')
  int? get fondId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryModelCopyWith<CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
          CountryModel value, $Res Function(CountryModel) then) =
      _$CountryModelCopyWithImpl<$Res, CountryModel>;
  @useResult
  $Res call(
      {int? id,
      String? name1,
      String? name2,
      String? name3,
      String? ename,
      String? kod,
      int? active,
      @JsonKey(name: 'fond_id') int? fondId});
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res, $Val extends CountryModel>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name1 = freezed,
    Object? name2 = freezed,
    Object? name3 = freezed,
    Object? ename = freezed,
    Object? kod = freezed,
    Object? active = freezed,
    Object? fondId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name1: freezed == name1
          ? _value.name1
          : name1 // ignore: cast_nullable_to_non_nullable
              as String?,
      name2: freezed == name2
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as String?,
      name3: freezed == name3
          ? _value.name3
          : name3 // ignore: cast_nullable_to_non_nullable
              as String?,
      ename: freezed == ename
          ? _value.ename
          : ename // ignore: cast_nullable_to_non_nullable
              as String?,
      kod: freezed == kod
          ? _value.kod
          : kod // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      fondId: freezed == fondId
          ? _value.fondId
          : fondId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryModelCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$$_CountryModelCopyWith(
          _$_CountryModel value, $Res Function(_$_CountryModel) then) =
      __$$_CountryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name1,
      String? name2,
      String? name3,
      String? ename,
      String? kod,
      int? active,
      @JsonKey(name: 'fond_id') int? fondId});
}

/// @nodoc
class __$$_CountryModelCopyWithImpl<$Res>
    extends _$CountryModelCopyWithImpl<$Res, _$_CountryModel>
    implements _$$_CountryModelCopyWith<$Res> {
  __$$_CountryModelCopyWithImpl(
      _$_CountryModel _value, $Res Function(_$_CountryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name1 = freezed,
    Object? name2 = freezed,
    Object? name3 = freezed,
    Object? ename = freezed,
    Object? kod = freezed,
    Object? active = freezed,
    Object? fondId = freezed,
  }) {
    return _then(_$_CountryModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name1: freezed == name1
          ? _value.name1
          : name1 // ignore: cast_nullable_to_non_nullable
              as String?,
      name2: freezed == name2
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as String?,
      name3: freezed == name3
          ? _value.name3
          : name3 // ignore: cast_nullable_to_non_nullable
              as String?,
      ename: freezed == ename
          ? _value.ename
          : ename // ignore: cast_nullable_to_non_nullable
              as String?,
      kod: freezed == kod
          ? _value.kod
          : kod // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      fondId: freezed == fondId
          ? _value.fondId
          : fondId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryModel implements _CountryModel {
  const _$_CountryModel(
      {this.id,
      this.name1,
      this.name2,
      this.name3,
      this.ename,
      this.kod,
      this.active,
      @JsonKey(name: 'fond_id') this.fondId});

  factory _$_CountryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CountryModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name1;
  @override
  final String? name2;
  @override
  final String? name3;
  @override
  final String? ename;
  @override
  final String? kod;
  @override
  final int? active;
  @override
  @JsonKey(name: 'fond_id')
  final int? fondId;

  @override
  String toString() {
    return 'CountryModel(id: $id, name1: $name1, name2: $name2, name3: $name3, ename: $ename, kod: $kod, active: $active, fondId: $fondId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name1, name1) || other.name1 == name1) &&
            (identical(other.name2, name2) || other.name2 == name2) &&
            (identical(other.name3, name3) || other.name3 == name3) &&
            (identical(other.ename, ename) || other.ename == ename) &&
            (identical(other.kod, kod) || other.kod == kod) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.fondId, fondId) || other.fondId == fondId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name1, name2, name3, ename, kod, active, fondId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryModelCopyWith<_$_CountryModel> get copyWith =>
      __$$_CountryModelCopyWithImpl<_$_CountryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryModelToJson(
      this,
    );
  }
}

abstract class _CountryModel implements CountryModel {
  const factory _CountryModel(
      {final int? id,
      final String? name1,
      final String? name2,
      final String? name3,
      final String? ename,
      final String? kod,
      final int? active,
      @JsonKey(name: 'fond_id') final int? fondId}) = _$_CountryModel;

  factory _CountryModel.fromJson(Map<String, dynamic> json) =
      _$_CountryModel.fromJson;

  @override
  int? get id;
  @override
  String? get name1;
  @override
  String? get name2;
  @override
  String? get name3;
  @override
  String? get ename;
  @override
  String? get kod;
  @override
  int? get active;
  @override
  @JsonKey(name: 'fond_id')
  int? get fondId;
  @override
  @JsonKey(ignore: true)
  _$$_CountryModelCopyWith<_$_CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
