// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_otp_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendOtpState {
  StateStatus get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendOtpStateCopyWith<SendOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpStateCopyWith<$Res> {
  factory $SendOtpStateCopyWith(
          SendOtpState value, $Res Function(SendOtpState) then) =
      _$SendOtpStateCopyWithImpl<$Res, SendOtpState>;
  @useResult
  $Res call({StateStatus status, Failure failure});
}

/// @nodoc
class _$SendOtpStateCopyWithImpl<$Res, $Val extends SendOtpState>
    implements $SendOtpStateCopyWith<$Res> {
  _$SendOtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendOtpStateCopyWith<$Res>
    implements $SendOtpStateCopyWith<$Res> {
  factory _$$_SendOtpStateCopyWith(
          _$_SendOtpState value, $Res Function(_$_SendOtpState) then) =
      __$$_SendOtpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateStatus status, Failure failure});
}

/// @nodoc
class __$$_SendOtpStateCopyWithImpl<$Res>
    extends _$SendOtpStateCopyWithImpl<$Res, _$_SendOtpState>
    implements _$$_SendOtpStateCopyWith<$Res> {
  __$$_SendOtpStateCopyWithImpl(
      _$_SendOtpState _value, $Res Function(_$_SendOtpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
  }) {
    return _then(_$_SendOtpState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_SendOtpState implements _SendOtpState {
  const _$_SendOtpState(
      {this.status = StateStatus.unknown,
      this.failure = const UnknownFailure()});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final Failure failure;

  @override
  String toString() {
    return 'SendOtpState(status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendOtpState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendOtpStateCopyWith<_$_SendOtpState> get copyWith =>
      __$$_SendOtpStateCopyWithImpl<_$_SendOtpState>(this, _$identity);
}

abstract class _SendOtpState implements SendOtpState {
  const factory _SendOtpState(
      {final StateStatus status, final Failure failure}) = _$_SendOtpState;

  @override
  StateStatus get status;
  @override
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_SendOtpStateCopyWith<_$_SendOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}
