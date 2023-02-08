// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileResponse _$UserProfileResponseFromJson(Map<String, dynamic> json) {
  return _UserProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$UserProfileResponse {
  String? get lastName => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileResponseCopyWith<UserProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileResponseCopyWith<$Res> {
  factory $UserProfileResponseCopyWith(
          UserProfileResponse value, $Res Function(UserProfileResponse) then) =
      _$UserProfileResponseCopyWithImpl<$Res, UserProfileResponse>;
  @useResult
  $Res call(
      {String? lastName, String? firstName, String? phone, String? photo});
}

/// @nodoc
class _$UserProfileResponseCopyWithImpl<$Res, $Val extends UserProfileResponse>
    implements $UserProfileResponseCopyWith<$Res> {
  _$UserProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastName = freezed,
    Object? firstName = freezed,
    Object? phone = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserProfileResponseCopyWith<$Res>
    implements $UserProfileResponseCopyWith<$Res> {
  factory _$$_UserProfileResponseCopyWith(_$_UserProfileResponse value,
          $Res Function(_$_UserProfileResponse) then) =
      __$$_UserProfileResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? lastName, String? firstName, String? phone, String? photo});
}

/// @nodoc
class __$$_UserProfileResponseCopyWithImpl<$Res>
    extends _$UserProfileResponseCopyWithImpl<$Res, _$_UserProfileResponse>
    implements _$$_UserProfileResponseCopyWith<$Res> {
  __$$_UserProfileResponseCopyWithImpl(_$_UserProfileResponse _value,
      $Res Function(_$_UserProfileResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastName = freezed,
    Object? firstName = freezed,
    Object? phone = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$_UserProfileResponse(
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfileResponse implements _UserProfileResponse {
  const _$_UserProfileResponse(
      {this.lastName, this.firstName, this.phone, this.photo});

  factory _$_UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileResponseFromJson(json);

  @override
  final String? lastName;
  @override
  final String? firstName;
  @override
  final String? phone;
  @override
  final String? photo;

  @override
  String toString() {
    return 'UserProfileResponse(lastName: $lastName, firstName: $firstName, phone: $phone, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileResponse &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, lastName, firstName, phone, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProfileResponseCopyWith<_$_UserProfileResponse> get copyWith =>
      __$$_UserProfileResponseCopyWithImpl<_$_UserProfileResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileResponseToJson(
      this,
    );
  }
}

abstract class _UserProfileResponse implements UserProfileResponse {
  const factory _UserProfileResponse(
      {final String? lastName,
      final String? firstName,
      final String? phone,
      final String? photo}) = _$_UserProfileResponse;

  factory _UserProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_UserProfileResponse.fromJson;

  @override
  String? get lastName;
  @override
  String? get firstName;
  @override
  String? get phone;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileResponseCopyWith<_$_UserProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
