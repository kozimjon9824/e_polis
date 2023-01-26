// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_driver_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddDriverState {
  StateStatus get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  DriverPassportInputResponse? get driverData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddDriverStateCopyWith<AddDriverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDriverStateCopyWith<$Res> {
  factory $AddDriverStateCopyWith(
          AddDriverState value, $Res Function(AddDriverState) then) =
      _$AddDriverStateCopyWithImpl<$Res, AddDriverState>;
  @useResult
  $Res call(
      {StateStatus status,
      Failure failure,
      DriverPassportInputResponse? driverData});

  $DriverPassportInputResponseCopyWith<$Res>? get driverData;
}

/// @nodoc
class _$AddDriverStateCopyWithImpl<$Res, $Val extends AddDriverState>
    implements $AddDriverStateCopyWith<$Res> {
  _$AddDriverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? driverData = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      driverData: freezed == driverData
          ? _value.driverData
          : driverData // ignore: cast_nullable_to_non_nullable
              as DriverPassportInputResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverPassportInputResponseCopyWith<$Res>? get driverData {
    if (_value.driverData == null) {
      return null;
    }

    return $DriverPassportInputResponseCopyWith<$Res>(_value.driverData!,
        (value) {
      return _then(_value.copyWith(driverData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddDriverStateCopyWith<$Res>
    implements $AddDriverStateCopyWith<$Res> {
  factory _$$_AddDriverStateCopyWith(
          _$_AddDriverState value, $Res Function(_$_AddDriverState) then) =
      __$$_AddDriverStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status,
      Failure failure,
      DriverPassportInputResponse? driverData});

  @override
  $DriverPassportInputResponseCopyWith<$Res>? get driverData;
}

/// @nodoc
class __$$_AddDriverStateCopyWithImpl<$Res>
    extends _$AddDriverStateCopyWithImpl<$Res, _$_AddDriverState>
    implements _$$_AddDriverStateCopyWith<$Res> {
  __$$_AddDriverStateCopyWithImpl(
      _$_AddDriverState _value, $Res Function(_$_AddDriverState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? driverData = freezed,
  }) {
    return _then(_$_AddDriverState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      driverData: freezed == driverData
          ? _value.driverData
          : driverData // ignore: cast_nullable_to_non_nullable
              as DriverPassportInputResponse?,
    ));
  }
}

/// @nodoc

class _$_AddDriverState implements _AddDriverState {
  const _$_AddDriverState(
      {this.status = StateStatus.unknown,
      this.failure = const UnknownFailure(),
      this.driverData});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final DriverPassportInputResponse? driverData;

  @override
  String toString() {
    return 'AddDriverState(status: $status, failure: $failure, driverData: $driverData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddDriverState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.driverData, driverData) ||
                other.driverData == driverData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure, driverData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddDriverStateCopyWith<_$_AddDriverState> get copyWith =>
      __$$_AddDriverStateCopyWithImpl<_$_AddDriverState>(this, _$identity);
}

abstract class _AddDriverState implements AddDriverState {
  const factory _AddDriverState(
      {final StateStatus status,
      final Failure failure,
      final DriverPassportInputResponse? driverData}) = _$_AddDriverState;

  @override
  StateStatus get status;
  @override
  Failure get failure;
  @override
  DriverPassportInputResponse? get driverData;
  @override
  @JsonKey(ignore: true)
  _$$_AddDriverStateCopyWith<_$_AddDriverState> get copyWith =>
      throw _privateConstructorUsedError;
}
