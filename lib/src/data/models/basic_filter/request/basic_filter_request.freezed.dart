// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_filter_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasicFilterRequest _$BasicFilterRequestFromJson(Map<String, dynamic> json) {
  return _BasicFilterRequest.fromJson(json);
}

/// @nodoc
mixin _$BasicFilterRequest {
  String? get region => throw _privateConstructorUsedError;
  String? get vehicleType => throw _privateConstructorUsedError;
  bool? get isVip => throw _privateConstructorUsedError;
  String? get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasicFilterRequestCopyWith<BasicFilterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicFilterRequestCopyWith<$Res> {
  factory $BasicFilterRequestCopyWith(
          BasicFilterRequest value, $Res Function(BasicFilterRequest) then) =
      _$BasicFilterRequestCopyWithImpl<$Res, BasicFilterRequest>;
  @useResult
  $Res call({String? region, String? vehicleType, bool? isVip, String? period});
}

/// @nodoc
class _$BasicFilterRequestCopyWithImpl<$Res, $Val extends BasicFilterRequest>
    implements $BasicFilterRequestCopyWith<$Res> {
  _$BasicFilterRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = freezed,
    Object? vehicleType = freezed,
    Object? isVip = freezed,
    Object? period = freezed,
  }) {
    return _then(_value.copyWith(
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: freezed == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String?,
      isVip: freezed == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasicFilterRequestCopyWith<$Res>
    implements $BasicFilterRequestCopyWith<$Res> {
  factory _$$_BasicFilterRequestCopyWith(_$_BasicFilterRequest value,
          $Res Function(_$_BasicFilterRequest) then) =
      __$$_BasicFilterRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? region, String? vehicleType, bool? isVip, String? period});
}

/// @nodoc
class __$$_BasicFilterRequestCopyWithImpl<$Res>
    extends _$BasicFilterRequestCopyWithImpl<$Res, _$_BasicFilterRequest>
    implements _$$_BasicFilterRequestCopyWith<$Res> {
  __$$_BasicFilterRequestCopyWithImpl(
      _$_BasicFilterRequest _value, $Res Function(_$_BasicFilterRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = freezed,
    Object? vehicleType = freezed,
    Object? isVip = freezed,
    Object? period = freezed,
  }) {
    return _then(_$_BasicFilterRequest(
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: freezed == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String?,
      isVip: freezed == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasicFilterRequest implements _BasicFilterRequest {
  const _$_BasicFilterRequest(
      {this.region, this.vehicleType, this.isVip, this.period});

  factory _$_BasicFilterRequest.fromJson(Map<String, dynamic> json) =>
      _$$_BasicFilterRequestFromJson(json);

  @override
  final String? region;
  @override
  final String? vehicleType;
  @override
  final bool? isVip;
  @override
  final String? period;

  @override
  String toString() {
    return 'BasicFilterRequest(region: $region, vehicleType: $vehicleType, isVip: $isVip, period: $period)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasicFilterRequest &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.isVip, isVip) || other.isVip == isVip) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, region, vehicleType, isVip, period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasicFilterRequestCopyWith<_$_BasicFilterRequest> get copyWith =>
      __$$_BasicFilterRequestCopyWithImpl<_$_BasicFilterRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasicFilterRequestToJson(
      this,
    );
  }
}

abstract class _BasicFilterRequest implements BasicFilterRequest {
  const factory _BasicFilterRequest(
      {final String? region,
      final String? vehicleType,
      final bool? isVip,
      final String? period}) = _$_BasicFilterRequest;

  factory _BasicFilterRequest.fromJson(Map<String, dynamic> json) =
      _$_BasicFilterRequest.fromJson;

  @override
  String? get region;
  @override
  String? get vehicleType;
  @override
  bool? get isVip;
  @override
  String? get period;
  @override
  @JsonKey(ignore: true)
  _$$_BasicFilterRequestCopyWith<_$_BasicFilterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
