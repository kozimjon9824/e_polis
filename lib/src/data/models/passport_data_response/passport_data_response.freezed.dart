// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passport_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PassportDataResponse _$PassportDataResponseFromJson(Map<String, dynamic> json) {
  return _PassportDataResponse.fromJson(json);
}

/// @nodoc
mixin _$PassportDataResponse {
  String? get fullName => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String? get pinfl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassportDataResponseCopyWith<PassportDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportDataResponseCopyWith<$Res> {
  factory $PassportDataResponseCopyWith(PassportDataResponse value,
          $Res Function(PassportDataResponse) then) =
      _$PassportDataResponseCopyWithImpl<$Res, PassportDataResponse>;
  @useResult
  $Res call(
      {String? fullName,
      String? firstName,
      String? lastName,
      String? middleName,
      String? pinfl});
}

/// @nodoc
class _$PassportDataResponseCopyWithImpl<$Res,
        $Val extends PassportDataResponse>
    implements $PassportDataResponseCopyWith<$Res> {
  _$PassportDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? pinfl = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      pinfl: freezed == pinfl
          ? _value.pinfl
          : pinfl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PassportDataResponseCopyWith<$Res>
    implements $PassportDataResponseCopyWith<$Res> {
  factory _$$_PassportDataResponseCopyWith(_$_PassportDataResponse value,
          $Res Function(_$_PassportDataResponse) then) =
      __$$_PassportDataResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? firstName,
      String? lastName,
      String? middleName,
      String? pinfl});
}

/// @nodoc
class __$$_PassportDataResponseCopyWithImpl<$Res>
    extends _$PassportDataResponseCopyWithImpl<$Res, _$_PassportDataResponse>
    implements _$$_PassportDataResponseCopyWith<$Res> {
  __$$_PassportDataResponseCopyWithImpl(_$_PassportDataResponse _value,
      $Res Function(_$_PassportDataResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? pinfl = freezed,
  }) {
    return _then(_$_PassportDataResponse(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      pinfl: freezed == pinfl
          ? _value.pinfl
          : pinfl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PassportDataResponse implements _PassportDataResponse {
  const _$_PassportDataResponse(
      {this.fullName,
      this.firstName,
      this.lastName,
      this.middleName,
      this.pinfl});

  factory _$_PassportDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PassportDataResponseFromJson(json);

  @override
  final String? fullName;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? middleName;
  @override
  final String? pinfl;

  @override
  String toString() {
    return 'PassportDataResponse(fullName: $fullName, firstName: $firstName, lastName: $lastName, middleName: $middleName, pinfl: $pinfl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PassportDataResponse &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.pinfl, pinfl) || other.pinfl == pinfl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, firstName, lastName, middleName, pinfl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PassportDataResponseCopyWith<_$_PassportDataResponse> get copyWith =>
      __$$_PassportDataResponseCopyWithImpl<_$_PassportDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PassportDataResponseToJson(
      this,
    );
  }
}

abstract class _PassportDataResponse implements PassportDataResponse {
  const factory _PassportDataResponse(
      {final String? fullName,
      final String? firstName,
      final String? lastName,
      final String? middleName,
      final String? pinfl}) = _$_PassportDataResponse;

  factory _PassportDataResponse.fromJson(Map<String, dynamic> json) =
      _$_PassportDataResponse.fromJson;

  @override
  String? get fullName;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get middleName;
  @override
  String? get pinfl;
  @override
  @JsonKey(ignore: true)
  _$$_PassportDataResponseCopyWith<_$_PassportDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
