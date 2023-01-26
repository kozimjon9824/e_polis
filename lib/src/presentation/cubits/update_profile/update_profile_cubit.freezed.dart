// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateProfileState {
  StateStatus get status => throw _privateConstructorUsedError;
  UserProfileResponse? get user => throw _privateConstructorUsedError;
  File? get selectedFile => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateProfileStateCopyWith<UpdateProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileStateCopyWith<$Res> {
  factory $UpdateProfileStateCopyWith(
          UpdateProfileState value, $Res Function(UpdateProfileState) then) =
      _$UpdateProfileStateCopyWithImpl<$Res, UpdateProfileState>;
  @useResult
  $Res call(
      {StateStatus status,
      UserProfileResponse? user,
      File? selectedFile,
      Failure failure});

  $UserProfileResponseCopyWith<$Res>? get user;
}

/// @nodoc
class _$UpdateProfileStateCopyWithImpl<$Res, $Val extends UpdateProfileState>
    implements $UpdateProfileStateCopyWith<$Res> {
  _$UpdateProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? selectedFile = freezed,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfileResponse?,
      selectedFile: freezed == selectedFile
          ? _value.selectedFile
          : selectedFile // ignore: cast_nullable_to_non_nullable
              as File?,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileResponseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserProfileResponseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpdateProfileStateCopyWith<$Res>
    implements $UpdateProfileStateCopyWith<$Res> {
  factory _$$_UpdateProfileStateCopyWith(_$_UpdateProfileState value,
          $Res Function(_$_UpdateProfileState) then) =
      __$$_UpdateProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status,
      UserProfileResponse? user,
      File? selectedFile,
      Failure failure});

  @override
  $UserProfileResponseCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UpdateProfileStateCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$_UpdateProfileState>
    implements _$$_UpdateProfileStateCopyWith<$Res> {
  __$$_UpdateProfileStateCopyWithImpl(
      _$_UpdateProfileState _value, $Res Function(_$_UpdateProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? selectedFile = freezed,
    Object? failure = null,
  }) {
    return _then(_$_UpdateProfileState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfileResponse?,
      selectedFile: freezed == selectedFile
          ? _value.selectedFile
          : selectedFile // ignore: cast_nullable_to_non_nullable
              as File?,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_UpdateProfileState implements _UpdateProfileState {
  const _$_UpdateProfileState(
      {this.status = StateStatus.unknown,
      this.user,
      this.selectedFile,
      this.failure = const UnknownFailure()});

  @override
  @JsonKey()
  final StateStatus status;
  @override
  final UserProfileResponse? user;
  @override
  final File? selectedFile;
  @override
  @JsonKey()
  final Failure failure;

  @override
  String toString() {
    return 'UpdateProfileState(status: $status, user: $user, selectedFile: $selectedFile, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProfileState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.selectedFile, selectedFile) ||
                other.selectedFile == selectedFile) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, user, selectedFile, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProfileStateCopyWith<_$_UpdateProfileState> get copyWith =>
      __$$_UpdateProfileStateCopyWithImpl<_$_UpdateProfileState>(
          this, _$identity);
}

abstract class _UpdateProfileState implements UpdateProfileState {
  const factory _UpdateProfileState(
      {final StateStatus status,
      final UserProfileResponse? user,
      final File? selectedFile,
      final Failure failure}) = _$_UpdateProfileState;

  @override
  StateStatus get status;
  @override
  UserProfileResponse? get user;
  @override
  File? get selectedFile;
  @override
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateProfileStateCopyWith<_$_UpdateProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
