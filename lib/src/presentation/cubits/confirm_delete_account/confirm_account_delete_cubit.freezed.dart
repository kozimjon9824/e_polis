// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_account_delete_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConfirmAccountDeleteState {
  StateStatus get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  DeleteAccountResponse? get deleteAccountResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmAccountDeleteStateCopyWith<ConfirmAccountDeleteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmAccountDeleteStateCopyWith<$Res> {
  factory $ConfirmAccountDeleteStateCopyWith(ConfirmAccountDeleteState value,
          $Res Function(ConfirmAccountDeleteState) then) =
      _$ConfirmAccountDeleteStateCopyWithImpl<$Res, ConfirmAccountDeleteState>;
  @useResult
  $Res call(
      {StateStatus status,
      Failure failure,
      DeleteAccountResponse? deleteAccountResponse});

  $DeleteAccountResponseCopyWith<$Res>? get deleteAccountResponse;
}

/// @nodoc
class _$ConfirmAccountDeleteStateCopyWithImpl<$Res,
        $Val extends ConfirmAccountDeleteState>
    implements $ConfirmAccountDeleteStateCopyWith<$Res> {
  _$ConfirmAccountDeleteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? deleteAccountResponse = freezed,
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
      deleteAccountResponse: freezed == deleteAccountResponse
          ? _value.deleteAccountResponse
          : deleteAccountResponse // ignore: cast_nullable_to_non_nullable
              as DeleteAccountResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeleteAccountResponseCopyWith<$Res>? get deleteAccountResponse {
    if (_value.deleteAccountResponse == null) {
      return null;
    }

    return $DeleteAccountResponseCopyWith<$Res>(_value.deleteAccountResponse!,
        (value) {
      return _then(_value.copyWith(deleteAccountResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ConfirmAccountDeleteStateCopyWith<$Res>
    implements $ConfirmAccountDeleteStateCopyWith<$Res> {
  factory _$$_ConfirmAccountDeleteStateCopyWith(
          _$_ConfirmAccountDeleteState value,
          $Res Function(_$_ConfirmAccountDeleteState) then) =
      __$$_ConfirmAccountDeleteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status,
      Failure failure,
      DeleteAccountResponse? deleteAccountResponse});

  @override
  $DeleteAccountResponseCopyWith<$Res>? get deleteAccountResponse;
}

/// @nodoc
class __$$_ConfirmAccountDeleteStateCopyWithImpl<$Res>
    extends _$ConfirmAccountDeleteStateCopyWithImpl<$Res,
        _$_ConfirmAccountDeleteState>
    implements _$$_ConfirmAccountDeleteStateCopyWith<$Res> {
  __$$_ConfirmAccountDeleteStateCopyWithImpl(
      _$_ConfirmAccountDeleteState _value,
      $Res Function(_$_ConfirmAccountDeleteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? deleteAccountResponse = freezed,
  }) {
    return _then(_$_ConfirmAccountDeleteState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      deleteAccountResponse: freezed == deleteAccountResponse
          ? _value.deleteAccountResponse
          : deleteAccountResponse // ignore: cast_nullable_to_non_nullable
              as DeleteAccountResponse?,
    ));
  }
}

/// @nodoc

class _$_ConfirmAccountDeleteState implements _ConfirmAccountDeleteState {
  const _$_ConfirmAccountDeleteState(
      {this.status = StateStatus.unknown,
      this.failure = const UnknownFailure(),
      this.deleteAccountResponse});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final DeleteAccountResponse? deleteAccountResponse;

  @override
  String toString() {
    return 'ConfirmAccountDeleteState(status: $status, failure: $failure, deleteAccountResponse: $deleteAccountResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmAccountDeleteState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.deleteAccountResponse, deleteAccountResponse) ||
                other.deleteAccountResponse == deleteAccountResponse));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, failure, deleteAccountResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfirmAccountDeleteStateCopyWith<_$_ConfirmAccountDeleteState>
      get copyWith => __$$_ConfirmAccountDeleteStateCopyWithImpl<
          _$_ConfirmAccountDeleteState>(this, _$identity);
}

abstract class _ConfirmAccountDeleteState implements ConfirmAccountDeleteState {
  const factory _ConfirmAccountDeleteState(
          {final StateStatus status,
          final Failure failure,
          final DeleteAccountResponse? deleteAccountResponse}) =
      _$_ConfirmAccountDeleteState;

  @override
  StateStatus get status;
  @override
  Failure get failure;
  @override
  DeleteAccountResponse? get deleteAccountResponse;
  @override
  @JsonKey(ignore: true)
  _$$_ConfirmAccountDeleteStateCopyWith<_$_ConfirmAccountDeleteState>
      get copyWith => throw _privateConstructorUsedError;
}
