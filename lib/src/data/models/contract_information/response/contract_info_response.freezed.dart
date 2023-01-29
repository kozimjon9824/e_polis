// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContractInfoResponse _$ContractInfoResponseFromJson(Map<String, dynamic> json) {
  return _ContractInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$ContractInfoResponse {
  double? get insuranceAmount => throw _privateConstructorUsedError;
  double? get policyAmount => throw _privateConstructorUsedError;
  double? get lifeDamage => throw _privateConstructorUsedError;
  double? get propertyDamage => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractInfoResponseCopyWith<ContractInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractInfoResponseCopyWith<$Res> {
  factory $ContractInfoResponseCopyWith(ContractInfoResponse value,
          $Res Function(ContractInfoResponse) then) =
      _$ContractInfoResponseCopyWithImpl<$Res, ContractInfoResponse>;
  @useResult
  $Res call(
      {double? insuranceAmount,
      double? policyAmount,
      double? lifeDamage,
      double? propertyDamage,
      String? endDate});
}

/// @nodoc
class _$ContractInfoResponseCopyWithImpl<$Res,
        $Val extends ContractInfoResponse>
    implements $ContractInfoResponseCopyWith<$Res> {
  _$ContractInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insuranceAmount = freezed,
    Object? policyAmount = freezed,
    Object? lifeDamage = freezed,
    Object? propertyDamage = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
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
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContractInfoResponseCopyWith<$Res>
    implements $ContractInfoResponseCopyWith<$Res> {
  factory _$$_ContractInfoResponseCopyWith(_$_ContractInfoResponse value,
          $Res Function(_$_ContractInfoResponse) then) =
      __$$_ContractInfoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? insuranceAmount,
      double? policyAmount,
      double? lifeDamage,
      double? propertyDamage,
      String? endDate});
}

/// @nodoc
class __$$_ContractInfoResponseCopyWithImpl<$Res>
    extends _$ContractInfoResponseCopyWithImpl<$Res, _$_ContractInfoResponse>
    implements _$$_ContractInfoResponseCopyWith<$Res> {
  __$$_ContractInfoResponseCopyWithImpl(_$_ContractInfoResponse _value,
      $Res Function(_$_ContractInfoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insuranceAmount = freezed,
    Object? policyAmount = freezed,
    Object? lifeDamage = freezed,
    Object? propertyDamage = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$_ContractInfoResponse(
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
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContractInfoResponse implements _ContractInfoResponse {
  const _$_ContractInfoResponse(
      {this.insuranceAmount,
      this.policyAmount,
      this.lifeDamage,
      this.propertyDamage,
      this.endDate});

  factory _$_ContractInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ContractInfoResponseFromJson(json);

  @override
  final double? insuranceAmount;
  @override
  final double? policyAmount;
  @override
  final double? lifeDamage;
  @override
  final double? propertyDamage;
  @override
  final String? endDate;

  @override
  String toString() {
    return 'ContractInfoResponse(insuranceAmount: $insuranceAmount, policyAmount: $policyAmount, lifeDamage: $lifeDamage, propertyDamage: $propertyDamage, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContractInfoResponse &&
            (identical(other.insuranceAmount, insuranceAmount) ||
                other.insuranceAmount == insuranceAmount) &&
            (identical(other.policyAmount, policyAmount) ||
                other.policyAmount == policyAmount) &&
            (identical(other.lifeDamage, lifeDamage) ||
                other.lifeDamage == lifeDamage) &&
            (identical(other.propertyDamage, propertyDamage) ||
                other.propertyDamage == propertyDamage) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, insuranceAmount, policyAmount,
      lifeDamage, propertyDamage, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContractInfoResponseCopyWith<_$_ContractInfoResponse> get copyWith =>
      __$$_ContractInfoResponseCopyWithImpl<_$_ContractInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContractInfoResponseToJson(
      this,
    );
  }
}

abstract class _ContractInfoResponse implements ContractInfoResponse {
  const factory _ContractInfoResponse(
      {final double? insuranceAmount,
      final double? policyAmount,
      final double? lifeDamage,
      final double? propertyDamage,
      final String? endDate}) = _$_ContractInfoResponse;

  factory _ContractInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_ContractInfoResponse.fromJson;

  @override
  double? get insuranceAmount;
  @override
  double? get policyAmount;
  @override
  double? get lifeDamage;
  @override
  double? get propertyDamage;
  @override
  String? get endDate;
  @override
  @JsonKey(ignore: true)
  _$$_ContractInfoResponseCopyWith<_$_ContractInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
