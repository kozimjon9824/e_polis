// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_calculator_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TravelCalculatorState {
  StateStatus get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  TravelCalResponse? get calResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelCalculatorStateCopyWith<TravelCalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCalculatorStateCopyWith<$Res> {
  factory $TravelCalculatorStateCopyWith(TravelCalculatorState value,
          $Res Function(TravelCalculatorState) then) =
      _$TravelCalculatorStateCopyWithImpl<$Res, TravelCalculatorState>;
  @useResult
  $Res call(
      {StateStatus status, Failure failure, TravelCalResponse? calResponse});

  $TravelCalResponseCopyWith<$Res>? get calResponse;
}

/// @nodoc
class _$TravelCalculatorStateCopyWithImpl<$Res,
        $Val extends TravelCalculatorState>
    implements $TravelCalculatorStateCopyWith<$Res> {
  _$TravelCalculatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? calResponse = freezed,
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
      calResponse: freezed == calResponse
          ? _value.calResponse
          : calResponse // ignore: cast_nullable_to_non_nullable
              as TravelCalResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelCalResponseCopyWith<$Res>? get calResponse {
    if (_value.calResponse == null) {
      return null;
    }

    return $TravelCalResponseCopyWith<$Res>(_value.calResponse!, (value) {
      return _then(_value.copyWith(calResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TravelCalculatorStateCopyWith<$Res>
    implements $TravelCalculatorStateCopyWith<$Res> {
  factory _$$_TravelCalculatorStateCopyWith(_$_TravelCalculatorState value,
          $Res Function(_$_TravelCalculatorState) then) =
      __$$_TravelCalculatorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status, Failure failure, TravelCalResponse? calResponse});

  @override
  $TravelCalResponseCopyWith<$Res>? get calResponse;
}

/// @nodoc
class __$$_TravelCalculatorStateCopyWithImpl<$Res>
    extends _$TravelCalculatorStateCopyWithImpl<$Res, _$_TravelCalculatorState>
    implements _$$_TravelCalculatorStateCopyWith<$Res> {
  __$$_TravelCalculatorStateCopyWithImpl(_$_TravelCalculatorState _value,
      $Res Function(_$_TravelCalculatorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? calResponse = freezed,
  }) {
    return _then(_$_TravelCalculatorState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      calResponse: freezed == calResponse
          ? _value.calResponse
          : calResponse // ignore: cast_nullable_to_non_nullable
              as TravelCalResponse?,
    ));
  }
}

/// @nodoc

class _$_TravelCalculatorState implements _TravelCalculatorState {
  const _$_TravelCalculatorState(
      {this.status = StateStatus.unknown,
      this.failure = const UnknownFailure(),
      this.calResponse});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final TravelCalResponse? calResponse;

  @override
  String toString() {
    return 'TravelCalculatorState(status: $status, failure: $failure, calResponse: $calResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelCalculatorState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.calResponse, calResponse) ||
                other.calResponse == calResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure, calResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TravelCalculatorStateCopyWith<_$_TravelCalculatorState> get copyWith =>
      __$$_TravelCalculatorStateCopyWithImpl<_$_TravelCalculatorState>(
          this, _$identity);
}

abstract class _TravelCalculatorState implements TravelCalculatorState {
  const factory _TravelCalculatorState(
      {final StateStatus status,
      final Failure failure,
      final TravelCalResponse? calResponse}) = _$_TravelCalculatorState;

  @override
  StateStatus get status;
  @override
  Failure get failure;
  @override
  TravelCalResponse? get calResponse;
  @override
  @JsonKey(ignore: true)
  _$$_TravelCalculatorStateCopyWith<_$_TravelCalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}
