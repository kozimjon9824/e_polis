// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_information_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContractInformationState {
  StateStatus get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  ContractInfoResponse? get contract => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContractInformationStateCopyWith<ContractInformationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractInformationStateCopyWith<$Res> {
  factory $ContractInformationStateCopyWith(ContractInformationState value,
          $Res Function(ContractInformationState) then) =
      _$ContractInformationStateCopyWithImpl<$Res, ContractInformationState>;
  @useResult
  $Res call(
      {StateStatus status, Failure failure, ContractInfoResponse? contract});

  $ContractInfoResponseCopyWith<$Res>? get contract;
}

/// @nodoc
class _$ContractInformationStateCopyWithImpl<$Res,
        $Val extends ContractInformationState>
    implements $ContractInformationStateCopyWith<$Res> {
  _$ContractInformationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? contract = freezed,
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
      contract: freezed == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as ContractInfoResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractInfoResponseCopyWith<$Res>? get contract {
    if (_value.contract == null) {
      return null;
    }

    return $ContractInfoResponseCopyWith<$Res>(_value.contract!, (value) {
      return _then(_value.copyWith(contract: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ContractInformationStateCopyWith<$Res>
    implements $ContractInformationStateCopyWith<$Res> {
  factory _$$_ContractInformationStateCopyWith(
          _$_ContractInformationState value,
          $Res Function(_$_ContractInformationState) then) =
      __$$_ContractInformationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status, Failure failure, ContractInfoResponse? contract});

  @override
  $ContractInfoResponseCopyWith<$Res>? get contract;
}

/// @nodoc
class __$$_ContractInformationStateCopyWithImpl<$Res>
    extends _$ContractInformationStateCopyWithImpl<$Res,
        _$_ContractInformationState>
    implements _$$_ContractInformationStateCopyWith<$Res> {
  __$$_ContractInformationStateCopyWithImpl(_$_ContractInformationState _value,
      $Res Function(_$_ContractInformationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? contract = freezed,
  }) {
    return _then(_$_ContractInformationState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      contract: freezed == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as ContractInfoResponse?,
    ));
  }
}

/// @nodoc

class _$_ContractInformationState implements _ContractInformationState {
  const _$_ContractInformationState(
      {this.status = StateStatus.unknown,
      this.failure = const UnknownFailure(),
      this.contract});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final ContractInfoResponse? contract;

  @override
  String toString() {
    return 'ContractInformationState(status: $status, failure: $failure, contract: $contract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContractInformationState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.contract, contract) ||
                other.contract == contract));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure, contract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContractInformationStateCopyWith<_$_ContractInformationState>
      get copyWith => __$$_ContractInformationStateCopyWithImpl<
          _$_ContractInformationState>(this, _$identity);
}

abstract class _ContractInformationState implements ContractInformationState {
  const factory _ContractInformationState(
      {final StateStatus status,
      final Failure failure,
      final ContractInfoResponse? contract}) = _$_ContractInformationState;

  @override
  StateStatus get status;
  @override
  Failure get failure;
  @override
  ContractInfoResponse? get contract;
  @override
  @JsonKey(ignore: true)
  _$$_ContractInformationStateCopyWith<_$_ContractInformationState>
      get copyWith => throw _privateConstructorUsedError;
}
