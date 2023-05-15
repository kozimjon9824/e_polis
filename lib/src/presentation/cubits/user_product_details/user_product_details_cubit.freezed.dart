// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_product_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserProductDetailsState {
  StateStatus get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  UserProduct? get userProduct => throw _privateConstructorUsedError;
  String? get filePath => throw _privateConstructorUsedError;
  bool get fileDownloading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProductDetailsStateCopyWith<UserProductDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProductDetailsStateCopyWith<$Res> {
  factory $UserProductDetailsStateCopyWith(UserProductDetailsState value,
          $Res Function(UserProductDetailsState) then) =
      _$UserProductDetailsStateCopyWithImpl<$Res, UserProductDetailsState>;
  @useResult
  $Res call(
      {StateStatus status,
      Failure failure,
      UserProduct? userProduct,
      String? filePath,
      bool fileDownloading});

  $UserProductCopyWith<$Res>? get userProduct;
}

/// @nodoc
class _$UserProductDetailsStateCopyWithImpl<$Res,
        $Val extends UserProductDetailsState>
    implements $UserProductDetailsStateCopyWith<$Res> {
  _$UserProductDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? userProduct = freezed,
    Object? filePath = freezed,
    Object? fileDownloading = null,
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
      userProduct: freezed == userProduct
          ? _value.userProduct
          : userProduct // ignore: cast_nullable_to_non_nullable
              as UserProduct?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      fileDownloading: null == fileDownloading
          ? _value.fileDownloading
          : fileDownloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProductCopyWith<$Res>? get userProduct {
    if (_value.userProduct == null) {
      return null;
    }

    return $UserProductCopyWith<$Res>(_value.userProduct!, (value) {
      return _then(_value.copyWith(userProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserProductDetailsStateCopyWith<$Res>
    implements $UserProductDetailsStateCopyWith<$Res> {
  factory _$$_UserProductDetailsStateCopyWith(_$_UserProductDetailsState value,
          $Res Function(_$_UserProductDetailsState) then) =
      __$$_UserProductDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status,
      Failure failure,
      UserProduct? userProduct,
      String? filePath,
      bool fileDownloading});

  @override
  $UserProductCopyWith<$Res>? get userProduct;
}

/// @nodoc
class __$$_UserProductDetailsStateCopyWithImpl<$Res>
    extends _$UserProductDetailsStateCopyWithImpl<$Res,
        _$_UserProductDetailsState>
    implements _$$_UserProductDetailsStateCopyWith<$Res> {
  __$$_UserProductDetailsStateCopyWithImpl(_$_UserProductDetailsState _value,
      $Res Function(_$_UserProductDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? userProduct = freezed,
    Object? filePath = freezed,
    Object? fileDownloading = null,
  }) {
    return _then(_$_UserProductDetailsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      userProduct: freezed == userProduct
          ? _value.userProduct
          : userProduct // ignore: cast_nullable_to_non_nullable
              as UserProduct?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      fileDownloading: null == fileDownloading
          ? _value.fileDownloading
          : fileDownloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserProductDetailsState implements _UserProductDetailsState {
  const _$_UserProductDetailsState(
      {this.status = StateStatus.unknown,
      this.failure = const UnknownFailure(),
      this.userProduct,
      this.filePath,
      this.fileDownloading = false});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final UserProduct? userProduct;
  @override
  final String? filePath;
  @override
  @JsonKey()
  final bool fileDownloading;

  @override
  String toString() {
    return 'UserProductDetailsState(status: $status, failure: $failure, userProduct: $userProduct, filePath: $filePath, fileDownloading: $fileDownloading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProductDetailsState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.userProduct, userProduct) ||
                other.userProduct == userProduct) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.fileDownloading, fileDownloading) ||
                other.fileDownloading == fileDownloading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, failure, userProduct, filePath, fileDownloading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProductDetailsStateCopyWith<_$_UserProductDetailsState>
      get copyWith =>
          __$$_UserProductDetailsStateCopyWithImpl<_$_UserProductDetailsState>(
              this, _$identity);
}

abstract class _UserProductDetailsState implements UserProductDetailsState {
  const factory _UserProductDetailsState(
      {final StateStatus status,
      final Failure failure,
      final UserProduct? userProduct,
      final String? filePath,
      final bool fileDownloading}) = _$_UserProductDetailsState;

  @override
  StateStatus get status;
  @override
  Failure get failure;
  @override
  UserProduct? get userProduct;
  @override
  String? get filePath;
  @override
  bool get fileDownloading;
  @override
  @JsonKey(ignore: true)
  _$$_UserProductDetailsStateCopyWith<_$_UserProductDetailsState>
      get copyWith => throw _privateConstructorUsedError;
}
