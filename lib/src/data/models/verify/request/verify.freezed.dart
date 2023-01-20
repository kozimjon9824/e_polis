// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifyRequest _$VerifyRequestFromJson(Map<String, dynamic> json) {
  return _VerifyRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyRequest {
  String? get phone => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyRequestCopyWith<VerifyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyRequestCopyWith<$Res> {
  factory $VerifyRequestCopyWith(
          VerifyRequest value, $Res Function(VerifyRequest) then) =
      _$VerifyRequestCopyWithImpl<$Res, VerifyRequest>;
  @useResult
  $Res call({String? phone, String? otp});
}

/// @nodoc
class _$VerifyRequestCopyWithImpl<$Res, $Val extends VerifyRequest>
    implements $VerifyRequestCopyWith<$Res> {
  _$VerifyRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyRequestCopyWith<$Res>
    implements $VerifyRequestCopyWith<$Res> {
  factory _$$_VerifyRequestCopyWith(
          _$_VerifyRequest value, $Res Function(_$_VerifyRequest) then) =
      __$$_VerifyRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phone, String? otp});
}

/// @nodoc
class __$$_VerifyRequestCopyWithImpl<$Res>
    extends _$VerifyRequestCopyWithImpl<$Res, _$_VerifyRequest>
    implements _$$_VerifyRequestCopyWith<$Res> {
  __$$_VerifyRequestCopyWithImpl(
      _$_VerifyRequest _value, $Res Function(_$_VerifyRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$_VerifyRequest(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyRequest implements _VerifyRequest {
  const _$_VerifyRequest({this.phone, this.otp});

  factory _$_VerifyRequest.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyRequestFromJson(json);

  @override
  final String? phone;
  @override
  final String? otp;

  @override
  String toString() {
    return 'VerifyRequest(phone: $phone, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyRequest &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyRequestCopyWith<_$_VerifyRequest> get copyWith =>
      __$$_VerifyRequestCopyWithImpl<_$_VerifyRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyRequestToJson(
      this,
    );
  }
}

abstract class _VerifyRequest implements VerifyRequest {
  const factory _VerifyRequest({final String? phone, final String? otp}) =
      _$_VerifyRequest;

  factory _VerifyRequest.fromJson(Map<String, dynamic> json) =
      _$_VerifyRequest.fromJson;

  @override
  String? get phone;
  @override
  String? get otp;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyRequestCopyWith<_$_VerifyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
