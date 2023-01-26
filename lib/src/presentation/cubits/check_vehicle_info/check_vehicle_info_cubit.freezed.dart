// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_vehicle_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckVehicleInfoState {
  VehicleInfoResponse? get vehicleInfo => throw _privateConstructorUsedError;
  StateStatus get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  bool get isPassportValidated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckVehicleInfoStateCopyWith<CheckVehicleInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckVehicleInfoStateCopyWith<$Res> {
  factory $CheckVehicleInfoStateCopyWith(CheckVehicleInfoState value,
          $Res Function(CheckVehicleInfoState) then) =
      _$CheckVehicleInfoStateCopyWithImpl<$Res, CheckVehicleInfoState>;
  @useResult
  $Res call(
      {VehicleInfoResponse? vehicleInfo,
      StateStatus status,
      Failure failure,
      bool isPassportValidated});

  $VehicleInfoResponseCopyWith<$Res>? get vehicleInfo;
}

/// @nodoc
class _$CheckVehicleInfoStateCopyWithImpl<$Res,
        $Val extends CheckVehicleInfoState>
    implements $CheckVehicleInfoStateCopyWith<$Res> {
  _$CheckVehicleInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleInfo = freezed,
    Object? status = null,
    Object? failure = null,
    Object? isPassportValidated = null,
  }) {
    return _then(_value.copyWith(
      vehicleInfo: freezed == vehicleInfo
          ? _value.vehicleInfo
          : vehicleInfo // ignore: cast_nullable_to_non_nullable
              as VehicleInfoResponse?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      isPassportValidated: null == isPassportValidated
          ? _value.isPassportValidated
          : isPassportValidated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleInfoResponseCopyWith<$Res>? get vehicleInfo {
    if (_value.vehicleInfo == null) {
      return null;
    }

    return $VehicleInfoResponseCopyWith<$Res>(_value.vehicleInfo!, (value) {
      return _then(_value.copyWith(vehicleInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CheckVehicleInfoStateCopyWith<$Res>
    implements $CheckVehicleInfoStateCopyWith<$Res> {
  factory _$$_CheckVehicleInfoStateCopyWith(_$_CheckVehicleInfoState value,
          $Res Function(_$_CheckVehicleInfoState) then) =
      __$$_CheckVehicleInfoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VehicleInfoResponse? vehicleInfo,
      StateStatus status,
      Failure failure,
      bool isPassportValidated});

  @override
  $VehicleInfoResponseCopyWith<$Res>? get vehicleInfo;
}

/// @nodoc
class __$$_CheckVehicleInfoStateCopyWithImpl<$Res>
    extends _$CheckVehicleInfoStateCopyWithImpl<$Res, _$_CheckVehicleInfoState>
    implements _$$_CheckVehicleInfoStateCopyWith<$Res> {
  __$$_CheckVehicleInfoStateCopyWithImpl(_$_CheckVehicleInfoState _value,
      $Res Function(_$_CheckVehicleInfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleInfo = freezed,
    Object? status = null,
    Object? failure = null,
    Object? isPassportValidated = null,
  }) {
    return _then(_$_CheckVehicleInfoState(
      vehicleInfo: freezed == vehicleInfo
          ? _value.vehicleInfo
          : vehicleInfo // ignore: cast_nullable_to_non_nullable
              as VehicleInfoResponse?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      isPassportValidated: null == isPassportValidated
          ? _value.isPassportValidated
          : isPassportValidated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CheckVehicleInfoState implements _CheckVehicleInfoState {
  const _$_CheckVehicleInfoState(
      {this.vehicleInfo,
      this.status = StateStatus.unknown,
      this.failure = const UnknownFailure(),
      this.isPassportValidated = false});

  @override
  final VehicleInfoResponse? vehicleInfo;
  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  @JsonKey()
  final bool isPassportValidated;

  @override
  String toString() {
    return 'CheckVehicleInfoState(vehicleInfo: $vehicleInfo, status: $status, failure: $failure, isPassportValidated: $isPassportValidated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckVehicleInfoState &&
            (identical(other.vehicleInfo, vehicleInfo) ||
                other.vehicleInfo == vehicleInfo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isPassportValidated, isPassportValidated) ||
                other.isPassportValidated == isPassportValidated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, vehicleInfo, status, failure, isPassportValidated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckVehicleInfoStateCopyWith<_$_CheckVehicleInfoState> get copyWith =>
      __$$_CheckVehicleInfoStateCopyWithImpl<_$_CheckVehicleInfoState>(
          this, _$identity);
}

abstract class _CheckVehicleInfoState implements CheckVehicleInfoState {
  const factory _CheckVehicleInfoState(
      {final VehicleInfoResponse? vehicleInfo,
      final StateStatus status,
      final Failure failure,
      final bool isPassportValidated}) = _$_CheckVehicleInfoState;

  @override
  VehicleInfoResponse? get vehicleInfo;
  @override
  StateStatus get status;
  @override
  Failure get failure;
  @override
  bool get isPassportValidated;
  @override
  @JsonKey(ignore: true)
  _$$_CheckVehicleInfoStateCopyWith<_$_CheckVehicleInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
