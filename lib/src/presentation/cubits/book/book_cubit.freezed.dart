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
  BookModel? get responseModel => throw _privateConstructorUsedError;
  BookModel get requestModel => throw _privateConstructorUsedError;

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
      BookModel? responseModel,
      BookModel requestModel});

  $BookModelCopyWith<$Res>? get responseModel;
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
    Object? responseModel = freezed,
    Object? requestModel = null,
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
      responseModel: freezed == responseModel
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as BookModel?,
      requestModel: null == requestModel
          ? _value.requestModel
          : requestModel // ignore: cast_nullable_to_non_nullable
              as BookModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookModelCopyWith<$Res>? get responseModel {
    if (_value.responseModel == null) {
      return null;
    }

    return $BookModelCopyWith<$Res>(_value.responseModel!, (value) {
      return _then(_value.copyWith(responseModel: value) as $Val);
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
      BookModel? responseModel,
      BookModel requestModel});

  @override
  $BookModelCopyWith<$Res>? get responseModel;
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
    Object? responseModel = freezed,
    Object? requestModel = null,
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
      responseModel: freezed == responseModel
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as BookModel?,
      requestModel: null == requestModel
          ? _value.requestModel
          : requestModel // ignore: cast_nullable_to_non_nullable
              as BookModel,
    ));
  }
}

/// @nodoc

class _$_BookState implements _BookState {
  const _$_BookState(
      {this.status = StateStatus.unknown,
      this.failure = const UnknownFailure(),
      this.responseModel,
      this.requestModel = const BookModel()});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final BookModel? responseModel;
  @override
  @JsonKey()
  final BookModel requestModel;

  @override
  String toString() {
    return 'BookState(status: $status, failure: $failure, responseModel: $responseModel, requestModel: $requestModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.responseModel, responseModel) ||
                other.responseModel == responseModel) &&
            (identical(other.requestModel, requestModel) ||
                other.requestModel == requestModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, failure, responseModel, requestModel);

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
      final BookModel? responseModel,
      final BookModel requestModel}) = _$_BookState;

  @override
  StateStatus get status;
  @override
  Failure get failure;
  @override
  BookModel? get responseModel;
  @override
  BookModel get requestModel;
  @override
  @JsonKey(ignore: true)
  _$$_BookStateCopyWith<_$_BookState> get copyWith =>
      throw _privateConstructorUsedError;
}
