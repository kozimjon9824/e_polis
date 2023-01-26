// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_filter_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasicFilterResponse _$BasicFilterResponseFromJson(Map<String, dynamic> json) {
  return _BasicFilterResponse.fromJson(json);
}

/// @nodoc
mixin _$BasicFilterResponse {
  List<BasicFilterData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasicFilterResponseCopyWith<BasicFilterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicFilterResponseCopyWith<$Res> {
  factory $BasicFilterResponseCopyWith(
          BasicFilterResponse value, $Res Function(BasicFilterResponse) then) =
      _$BasicFilterResponseCopyWithImpl<$Res, BasicFilterResponse>;
  @useResult
  $Res call({List<BasicFilterData>? data});
}

/// @nodoc
class _$BasicFilterResponseCopyWithImpl<$Res, $Val extends BasicFilterResponse>
    implements $BasicFilterResponseCopyWith<$Res> {
  _$BasicFilterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BasicFilterData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasicFilterResponseCopyWith<$Res>
    implements $BasicFilterResponseCopyWith<$Res> {
  factory _$$_BasicFilterResponseCopyWith(_$_BasicFilterResponse value,
          $Res Function(_$_BasicFilterResponse) then) =
      __$$_BasicFilterResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BasicFilterData>? data});
}

/// @nodoc
class __$$_BasicFilterResponseCopyWithImpl<$Res>
    extends _$BasicFilterResponseCopyWithImpl<$Res, _$_BasicFilterResponse>
    implements _$$_BasicFilterResponseCopyWith<$Res> {
  __$$_BasicFilterResponseCopyWithImpl(_$_BasicFilterResponse _value,
      $Res Function(_$_BasicFilterResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_BasicFilterResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BasicFilterData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasicFilterResponse implements _BasicFilterResponse {
  const _$_BasicFilterResponse({final List<BasicFilterData>? data})
      : _data = data;

  factory _$_BasicFilterResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BasicFilterResponseFromJson(json);

  final List<BasicFilterData>? _data;
  @override
  List<BasicFilterData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BasicFilterResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasicFilterResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasicFilterResponseCopyWith<_$_BasicFilterResponse> get copyWith =>
      __$$_BasicFilterResponseCopyWithImpl<_$_BasicFilterResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasicFilterResponseToJson(
      this,
    );
  }
}

abstract class _BasicFilterResponse implements BasicFilterResponse {
  const factory _BasicFilterResponse({final List<BasicFilterData>? data}) =
      _$_BasicFilterResponse;

  factory _BasicFilterResponse.fromJson(Map<String, dynamic> json) =
      _$_BasicFilterResponse.fromJson;

  @override
  List<BasicFilterData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_BasicFilterResponseCopyWith<_$_BasicFilterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

BasicFilterData _$BasicFilterDataFromJson(Map<String, dynamic> json) {
  return _BasicFilterData.fromJson(json);
}

/// @nodoc
mixin _$BasicFilterData {
  String? get id => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  double? get insuranceAmount => throw _privateConstructorUsedError;
  double? get policyAmount => throw _privateConstructorUsedError;
  double? get lifeDamage => throw _privateConstructorUsedError;
  double? get propertyDamage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasicFilterDataCopyWith<BasicFilterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicFilterDataCopyWith<$Res> {
  factory $BasicFilterDataCopyWith(
          BasicFilterData value, $Res Function(BasicFilterData) then) =
      _$BasicFilterDataCopyWithImpl<$Res, BasicFilterData>;
  @useResult
  $Res call(
      {String? id,
      String? logo,
      double? insuranceAmount,
      double? policyAmount,
      double? lifeDamage,
      double? propertyDamage});
}

/// @nodoc
class _$BasicFilterDataCopyWithImpl<$Res, $Val extends BasicFilterData>
    implements $BasicFilterDataCopyWith<$Res> {
  _$BasicFilterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? logo = freezed,
    Object? insuranceAmount = freezed,
    Object? policyAmount = freezed,
    Object? lifeDamage = freezed,
    Object? propertyDamage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceAmount: freezed == insuranceAmount
          ? _value.insuranceAmount
          : insuranceAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      policyAmount: freezed == policyAmount
          ? _value.policyAmount
          : policyAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      lifeDamage: freezed == lifeDamage
          ? _value.lifeDamage
          : lifeDamage // ignore: cast_nullable_to_non_nullable
              as double?,
      propertyDamage: freezed == propertyDamage
          ? _value.propertyDamage
          : propertyDamage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasicFilterDataCopyWith<$Res>
    implements $BasicFilterDataCopyWith<$Res> {
  factory _$$_BasicFilterDataCopyWith(
          _$_BasicFilterData value, $Res Function(_$_BasicFilterData) then) =
      __$$_BasicFilterDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? logo,
      double? insuranceAmount,
      double? policyAmount,
      double? lifeDamage,
      double? propertyDamage});
}

/// @nodoc
class __$$_BasicFilterDataCopyWithImpl<$Res>
    extends _$BasicFilterDataCopyWithImpl<$Res, _$_BasicFilterData>
    implements _$$_BasicFilterDataCopyWith<$Res> {
  __$$_BasicFilterDataCopyWithImpl(
      _$_BasicFilterData _value, $Res Function(_$_BasicFilterData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? logo = freezed,
    Object? insuranceAmount = freezed,
    Object? policyAmount = freezed,
    Object? lifeDamage = freezed,
    Object? propertyDamage = freezed,
  }) {
    return _then(_$_BasicFilterData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceAmount: freezed == insuranceAmount
          ? _value.insuranceAmount
          : insuranceAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      policyAmount: freezed == policyAmount
          ? _value.policyAmount
          : policyAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      lifeDamage: freezed == lifeDamage
          ? _value.lifeDamage
          : lifeDamage // ignore: cast_nullable_to_non_nullable
              as double?,
      propertyDamage: freezed == propertyDamage
          ? _value.propertyDamage
          : propertyDamage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasicFilterData implements _BasicFilterData {
  const _$_BasicFilterData(
      {this.id,
      this.logo,
      this.insuranceAmount,
      this.policyAmount,
      this.lifeDamage,
      this.propertyDamage});

  factory _$_BasicFilterData.fromJson(Map<String, dynamic> json) =>
      _$$_BasicFilterDataFromJson(json);

  @override
  final String? id;
  @override
  final String? logo;
  @override
  final double? insuranceAmount;
  @override
  final double? policyAmount;
  @override
  final double? lifeDamage;
  @override
  final double? propertyDamage;

  @override
  String toString() {
    return 'BasicFilterData(id: $id, logo: $logo, insuranceAmount: $insuranceAmount, policyAmount: $policyAmount, lifeDamage: $lifeDamage, propertyDamage: $propertyDamage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasicFilterData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.insuranceAmount, insuranceAmount) ||
                other.insuranceAmount == insuranceAmount) &&
            (identical(other.policyAmount, policyAmount) ||
                other.policyAmount == policyAmount) &&
            (identical(other.lifeDamage, lifeDamage) ||
                other.lifeDamage == lifeDamage) &&
            (identical(other.propertyDamage, propertyDamage) ||
                other.propertyDamage == propertyDamage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, logo, insuranceAmount,
      policyAmount, lifeDamage, propertyDamage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasicFilterDataCopyWith<_$_BasicFilterData> get copyWith =>
      __$$_BasicFilterDataCopyWithImpl<_$_BasicFilterData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasicFilterDataToJson(
      this,
    );
  }
}

abstract class _BasicFilterData implements BasicFilterData {
  const factory _BasicFilterData(
      {final String? id,
      final String? logo,
      final double? insuranceAmount,
      final double? policyAmount,
      final double? lifeDamage,
      final double? propertyDamage}) = _$_BasicFilterData;

  factory _BasicFilterData.fromJson(Map<String, dynamic> json) =
      _$_BasicFilterData.fromJson;

  @override
  String? get id;
  @override
  String? get logo;
  @override
  double? get insuranceAmount;
  @override
  double? get policyAmount;
  @override
  double? get lifeDamage;
  @override
  double? get propertyDamage;
  @override
  @JsonKey(ignore: true)
  _$$_BasicFilterDataCopyWith<_$_BasicFilterData> get copyWith =>
      throw _privateConstructorUsedError;
}
