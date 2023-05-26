// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookState {
  StateStatus get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  ContractInfoResponse? get contract => throw _privateConstructorUsedError;
  BookModel get requestModel => throw _privateConstructorUsedError;
  String? get paymentHolder => throw _privateConstructorUsedError;
  String? get inn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookStateCopyWith<BookState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStateCopyWith<$Res> {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) then) =
      _$BookStateCopyWithImpl<$Res, BookState>;
  @useResult
  $Res call(
      {StateStatus status,
      Failure failure,
      ContractInfoResponse? contract,
      BookModel requestModel,
      String? paymentHolder,
      String? inn});

  $ContractInfoResponseCopyWith<$Res>? get contract;
  $BookModelCopyWith<$Res> get requestModel;
}

/// @nodoc
class _$BookStateCopyWithImpl<$Res, $Val extends BookState>
    implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._value, this._then);

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
    Object? requestModel = null,
    Object? paymentHolder = freezed,
    Object? inn = freezed,
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
      requestModel: null == requestModel
          ? _value.requestModel
          : requestModel // ignore: cast_nullable_to_non_nullable
              as BookModel,
      paymentHolder: freezed == paymentHolder
          ? _value.paymentHolder
          : paymentHolder // ignore: cast_nullable_to_non_nullable
              as String?,
      inn: freezed == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String?,
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

  @override
  @pragma('vm:prefer-inline')
  $BookModelCopyWith<$Res> get requestModel {
    return $BookModelCopyWith<$Res>(_value.requestModel, (value) {
      return _then(_value.copyWith(requestModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookStateCopyWith<$Res> implements $BookStateCopyWith<$Res> {
  factory _$$_BookStateCopyWith(
          _$_BookState value, $Res Function(_$_BookState) then) =
      __$$_BookStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status,
      Failure failure,
      ContractInfoResponse? contract,
      BookModel requestModel,
      String? paymentHolder,
      String? inn});

  @override
  $ContractInfoResponseCopyWith<$Res>? get contract;
  @override
  $BookModelCopyWith<$Res> get requestModel;
}

/// @nodoc
class __$$_BookStateCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$_BookState>
    implements _$$_BookStateCopyWith<$Res> {
  __$$_BookStateCopyWithImpl(
      _$_BookState _value, $Res Function(_$_BookState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? contract = freezed,
    Object? requestModel = null,
    Object? paymentHolder = freezed,
    Object? inn = freezed,
  }) {
    return _then(_$_BookState(
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
      requestModel: null == requestModel
          ? _value.requestModel
          : requestModel // ignore: cast_nullable_to_non_nullable
              as BookModel,
      paymentHolder: freezed == paymentHolder
          ? _value.paymentHolder
          : paymentHolder // ignore: cast_nullable_to_non_nullable
              as String?,
      inn: freezed == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BookState implements _BookState {
  const _$_BookState(
      {this.status = StateStatus.unknown,
      this.failure = const UnknownFailure(),
      this.contract,
      this.requestModel = const BookModel(),
      this.paymentHolder,
      this.inn});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final ContractInfoResponse? contract;
  @override
  @JsonKey()
  final BookModel requestModel;
  @override
  final String? paymentHolder;
  @override
  final String? inn;

  @override
  String toString() {
    return 'BookState(status: $status, failure: $failure, contract: $contract, requestModel: $requestModel, paymentHolder: $paymentHolder, inn: $inn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.requestModel, requestModel) ||
                other.requestModel == requestModel) &&
            (identical(other.paymentHolder, paymentHolder) ||
                other.paymentHolder == paymentHolder) &&
            (identical(other.inn, inn) || other.inn == inn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, failure, contract, requestModel, paymentHolder, inn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookStateCopyWith<_$_BookState> get copyWith =>
      __$$_BookStateCopyWithImpl<_$_BookState>(this, _$identity);
}

abstract class _BookState implements BookState {
  const factory _BookState(
      {final StateStatus status,
      final Failure failure,
      final ContractInfoResponse? contract,
      final BookModel requestModel,
      final String? paymentHolder,
      final String? inn}) = _$_BookState;

  @override
  StateStatus get status;
  @override
  Failure get failure;
  @override
  ContractInfoResponse? get contract;
  @override
  BookModel get requestModel;
  @override
  String? get paymentHolder;
  @override
  String? get inn;
  @override
  @JsonKey(ignore: true)
  _$$_BookStateCopyWith<_$_BookState> get copyWith =>
      throw _privateConstructorUsedError;
}
