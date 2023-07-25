// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buy_travel_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BuyTravelState {
  StateStatus get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  TravelBookingRequest? get request => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BuyTravelStateCopyWith<BuyTravelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyTravelStateCopyWith<$Res> {
  factory $BuyTravelStateCopyWith(
          BuyTravelState value, $Res Function(BuyTravelState) then) =
      _$BuyTravelStateCopyWithImpl<$Res, BuyTravelState>;
  @useResult
  $Res call(
      {StateStatus status, Failure failure, TravelBookingRequest? request});

  $TravelBookingRequestCopyWith<$Res>? get request;
}

/// @nodoc
class _$BuyTravelStateCopyWithImpl<$Res, $Val extends BuyTravelState>
    implements $BuyTravelStateCopyWith<$Res> {
  _$BuyTravelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? request = freezed,
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
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TravelBookingRequest?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelBookingRequestCopyWith<$Res>? get request {
    if (_value.request == null) {
      return null;
    }

    return $TravelBookingRequestCopyWith<$Res>(_value.request!, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BuyTravelStateCopyWith<$Res>
    implements $BuyTravelStateCopyWith<$Res> {
  factory _$$_BuyTravelStateCopyWith(
          _$_BuyTravelState value, $Res Function(_$_BuyTravelState) then) =
      __$$_BuyTravelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status, Failure failure, TravelBookingRequest? request});

  @override
  $TravelBookingRequestCopyWith<$Res>? get request;
}

/// @nodoc
class __$$_BuyTravelStateCopyWithImpl<$Res>
    extends _$BuyTravelStateCopyWithImpl<$Res, _$_BuyTravelState>
    implements _$$_BuyTravelStateCopyWith<$Res> {
  __$$_BuyTravelStateCopyWithImpl(
      _$_BuyTravelState _value, $Res Function(_$_BuyTravelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? request = freezed,
  }) {
    return _then(_$_BuyTravelState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TravelBookingRequest?,
    ));
  }
}

/// @nodoc

class _$_BuyTravelState implements _BuyTravelState {
  const _$_BuyTravelState(
      {this.status = StateStatus.unknown,
      this.failure = const UnknownFailure(),
      this.request});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final TravelBookingRequest? request;

  @override
  String toString() {
    return 'BuyTravelState(status: $status, failure: $failure, request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuyTravelState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuyTravelStateCopyWith<_$_BuyTravelState> get copyWith =>
      __$$_BuyTravelStateCopyWithImpl<_$_BuyTravelState>(this, _$identity);
}

abstract class _BuyTravelState implements BuyTravelState {
  const factory _BuyTravelState(
      {final StateStatus status,
      final Failure failure,
      final TravelBookingRequest? request}) = _$_BuyTravelState;

  @override
  StateStatus get status;
  @override
  Failure get failure;
  @override
  TravelBookingRequest? get request;
  @override
  @JsonKey(ignore: true)
  _$$_BuyTravelStateCopyWith<_$_BuyTravelState> get copyWith =>
      throw _privateConstructorUsedError;
}
