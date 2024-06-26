// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileUpdateRequest _$ProfileUpdateRequestFromJson(Map<String, dynamic> json) {
  return _ProfileUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$ProfileUpdateRequest {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get phone => throw _privateConstructorUsedError;
  String? get otpCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileUpdateRequestCopyWith<ProfileUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUpdateRequestCopyWith<$Res> {
  factory $ProfileUpdateRequestCopyWith(ProfileUpdateRequest value,
          $Res Function(ProfileUpdateRequest) then) =
      _$ProfileUpdateRequestCopyWithImpl<$Res, ProfileUpdateRequest>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      @JsonKey(includeIfNull: false) String? photo,
      @JsonKey(includeIfNull: false) String? phone,
      String? otpCode});
}

/// @nodoc
class _$ProfileUpdateRequestCopyWithImpl<$Res,
        $Val extends ProfileUpdateRequest>
    implements $ProfileUpdateRequestCopyWith<$Res> {
  _$ProfileUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? photo = freezed,
    Object? phone = freezed,
    Object? otpCode = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      otpCode: freezed == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileUpdateRequestCopyWith<$Res>
    implements $ProfileUpdateRequestCopyWith<$Res> {
  factory _$$_ProfileUpdateRequestCopyWith(_$_ProfileUpdateRequest value,
          $Res Function(_$_ProfileUpdateRequest) then) =
      __$$_ProfileUpdateRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      @JsonKey(includeIfNull: false) String? photo,
      @JsonKey(includeIfNull: false) String? phone,
      String? otpCode});
}

/// @nodoc
class __$$_ProfileUpdateRequestCopyWithImpl<$Res>
    extends _$ProfileUpdateRequestCopyWithImpl<$Res, _$_ProfileUpdateRequest>
    implements _$$_ProfileUpdateRequestCopyWith<$Res> {
  __$$_ProfileUpdateRequestCopyWithImpl(_$_ProfileUpdateRequest _value,
      $Res Function(_$_ProfileUpdateRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? photo = freezed,
    Object? phone = freezed,
    Object? otpCode = freezed,
  }) {
    return _then(_$_ProfileUpdateRequest(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      otpCode: freezed == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileUpdateRequest implements _ProfileUpdateRequest {
  const _$_ProfileUpdateRequest(
      {this.firstName,
      this.lastName,
      @JsonKey(includeIfNull: false) this.photo,
      @JsonKey(includeIfNull: false) this.phone,
      this.otpCode});

  factory _$_ProfileUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileUpdateRequestFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  @JsonKey(includeIfNull: false)
  final String? photo;
  @override
  @JsonKey(includeIfNull: false)
  final String? phone;
  @override
  final String? otpCode;

  @override
  String toString() {
    return 'ProfileUpdateRequest(firstName: $firstName, lastName: $lastName, photo: $photo, phone: $phone, otpCode: $otpCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileUpdateRequest &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, photo, phone, otpCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileUpdateRequestCopyWith<_$_ProfileUpdateRequest> get copyWith =>
      __$$_ProfileUpdateRequestCopyWithImpl<_$_ProfileUpdateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileUpdateRequestToJson(
      this,
    );
  }
}

abstract class _ProfileUpdateRequest implements ProfileUpdateRequest {
  const factory _ProfileUpdateRequest(
      {final String? firstName,
      final String? lastName,
      @JsonKey(includeIfNull: false) final String? photo,
      @JsonKey(includeIfNull: false) final String? phone,
      final String? otpCode}) = _$_ProfileUpdateRequest;

  factory _ProfileUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$_ProfileUpdateRequest.fromJson;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  @JsonKey(includeIfNull: false)
  String? get photo;
  @override
  @JsonKey(includeIfNull: false)
  String? get phone;
  @override
  String? get otpCode;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileUpdateRequestCopyWith<_$_ProfileUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
