// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContractInfoRequest _$ContractInfoRequestFromJson(Map<String, dynamic> json) {
  return _ContractInfoRequest.fromJson(json);
}

/// @nodoc
mixin _$ContractInfoRequest {
  int? get region => throw _privateConstructorUsedError;
  int? get vehicleType => throw _privateConstructorUsedError;
  String? get period => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  bool? get isVip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractInfoRequestCopyWith<ContractInfoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractInfoRequestCopyWith<$Res> {
  factory $ContractInfoRequestCopyWith(
          ContractInfoRequest value, $Res Function(ContractInfoRequest) then) =
      _$ContractInfoRequestCopyWithImpl<$Res, ContractInfoRequest>;
  @useResult
  $Res call(
      {int? region,
      int? vehicleType,
      String? period,
      String? startDate,
      bool? isVip});
}

/// @nodoc
class _$ContractInfoRequestCopyWithImpl<$Res, $Val extends ContractInfoRequest>
    implements $ContractInfoRequestCopyWith<$Res> {
  _$ContractInfoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = freezed,
    Object? vehicleType = freezed,
    Object? period = freezed,
    Object? startDate = freezed,
    Object? isVip = freezed,
  }) {
    return _then(_value.copyWith(
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleType: freezed == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isVip: freezed == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContractInfoRequestCopyWith<$Res>
    implements $ContractInfoRequestCopyWith<$Res> {
  factory _$$_ContractInfoRequestCopyWith(_$_ContractInfoRequest value,
          $Res Function(_$_ContractInfoRequest) then) =
      __$$_ContractInfoRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? region,
      int? vehicleType,
      String? period,
      String? startDate,
      bool? isVip});
}

/// @nodoc
class __$$_ContractInfoRequestCopyWithImpl<$Res>
    extends _$ContractInfoRequestCopyWithImpl<$Res, _$_ContractInfoRequest>
    implements _$$_ContractInfoRequestCopyWith<$Res> {
  __$$_ContractInfoRequestCopyWithImpl(_$_ContractInfoRequest _value,
      $Res Function(_$_ContractInfoRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = freezed,
    Object? vehicleType = freezed,
    Object? period = freezed,
    Object? startDate = freezed,
    Object? isVip = freezed,
  }) {
    return _then(_$_ContractInfoRequest(
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleType: freezed == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isVip: freezed == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContractInfoRequest implements _ContractInfoRequest {
  const _$_ContractInfoRequest(
      {this.region, this.vehicleType, this.period, this.startDate, this.isVip});

  factory _$_ContractInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ContractInfoRequestFromJson(json);

  @override
  final int? region;
  @override
  final int? vehicleType;
  @override
  final String? period;
  @override
  final String? startDate;
  @override
  final bool? isVip;

  @override
  String toString() {
    return 'ContractInfoRequest(region: $region, vehicleType: $vehicleType, period: $period, startDate: $startDate, isVip: $isVip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContractInfoRequest &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.isVip, isVip) || other.isVip == isVip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, region, vehicleType, period, startDate, isVip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContractInfoRequestCopyWith<_$_ContractInfoRequest> get copyWith =>
      __$$_ContractInfoRequestCopyWithImpl<_$_ContractInfoRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContractInfoRequestToJson(
      this,
    );
  }
}

abstract class _ContractInfoRequest implements ContractInfoRequest {
  const factory _ContractInfoRequest(
      {final int? region,
      final int? vehicleType,
      final String? period,
      final String? startDate,
      final bool? isVip}) = _$_ContractInfoRequest;

  factory _ContractInfoRequest.fromJson(Map<String, dynamic> json) =
      _$_ContractInfoRequest.fromJson;

  @override
  int? get region;
  @override
  int? get vehicleType;
  @override
  String? get period;
  @override
  String? get startDate;
  @override
  bool? get isVip;
  @override
  @JsonKey(ignore: true)
  _$$_ContractInfoRequestCopyWith<_$_ContractInfoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
