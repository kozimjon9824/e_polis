// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_account_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteAccountRequest _$DeleteAccountRequestFromJson(Map<String, dynamic> json) {
  return _DeleteAccountRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteAccountRequest {
  String? get otpCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteAccountRequestCopyWith<DeleteAccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountRequestCopyWith<$Res> {
  factory $DeleteAccountRequestCopyWith(DeleteAccountRequest value,
          $Res Function(DeleteAccountRequest) then) =
      _$DeleteAccountRequestCopyWithImpl<$Res, DeleteAccountRequest>;
  @useResult
  $Res call({String? otpCode});
}

/// @nodoc
class _$DeleteAccountRequestCopyWithImpl<$Res,
        $Val extends DeleteAccountRequest>
    implements $DeleteAccountRequestCopyWith<$Res> {
  _$DeleteAccountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = freezed,
  }) {
    return _then(_value.copyWith(
      otpCode: freezed == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteAccountRequestCopyWith<$Res>
    implements $DeleteAccountRequestCopyWith<$Res> {
  factory _$$_DeleteAccountRequestCopyWith(_$_DeleteAccountRequest value,
          $Res Function(_$_DeleteAccountRequest) then) =
      __$$_DeleteAccountRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? otpCode});
}

/// @nodoc
class __$$_DeleteAccountRequestCopyWithImpl<$Res>
    extends _$DeleteAccountRequestCopyWithImpl<$Res, _$_DeleteAccountRequest>
    implements _$$_DeleteAccountRequestCopyWith<$Res> {
  __$$_DeleteAccountRequestCopyWithImpl(_$_DeleteAccountRequest _value,
      $Res Function(_$_DeleteAccountRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = freezed,
  }) {
    return _then(_$_DeleteAccountRequest(
      otpCode: freezed == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteAccountRequest implements _DeleteAccountRequest {
  const _$_DeleteAccountRequest({this.otpCode});

  factory _$_DeleteAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteAccountRequestFromJson(json);

  @override
  final String? otpCode;

  @override
  String toString() {
    return 'DeleteAccountRequest(otpCode: $otpCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAccountRequest &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, otpCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAccountRequestCopyWith<_$_DeleteAccountRequest> get copyWith =>
      __$$_DeleteAccountRequestCopyWithImpl<_$_DeleteAccountRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteAccountRequestToJson(
      this,
    );
  }
}

abstract class _DeleteAccountRequest implements DeleteAccountRequest {
  const factory _DeleteAccountRequest({final String? otpCode}) =
      _$_DeleteAccountRequest;

  factory _DeleteAccountRequest.fromJson(Map<String, dynamic> json) =
      _$_DeleteAccountRequest.fromJson;

  @override
  String? get otpCode;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteAccountRequestCopyWith<_$_DeleteAccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
