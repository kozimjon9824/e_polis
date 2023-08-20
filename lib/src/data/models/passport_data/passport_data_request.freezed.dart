// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passport_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PassportDataRequest _$PassportDataRequestFromJson(Map<String, dynamic> json) {
  return _PassportDataRequest.fromJson(json);
}

/// @nodoc
mixin _$PassportDataRequest {
  String? get birthDate => throw _privateConstructorUsedError;
  String? get passportSeries => throw _privateConstructorUsedError;
  String? get passportNumber => throw _privateConstructorUsedError;
  String? get isConsent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassportDataRequestCopyWith<PassportDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportDataRequestCopyWith<$Res> {
  factory $PassportDataRequestCopyWith(
          PassportDataRequest value, $Res Function(PassportDataRequest) then) =
      _$PassportDataRequestCopyWithImpl<$Res, PassportDataRequest>;
  @useResult
  $Res call(
      {String? birthDate,
      String? passportSeries,
      String? passportNumber,
      String? isConsent});
}

/// @nodoc
class _$PassportDataRequestCopyWithImpl<$Res, $Val extends PassportDataRequest>
    implements $PassportDataRequestCopyWith<$Res> {
  _$PassportDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthDate = freezed,
    Object? passportSeries = freezed,
    Object? passportNumber = freezed,
    Object? isConsent = freezed,
  }) {
    return _then(_value.copyWith(
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      passportSeries: freezed == passportSeries
          ? _value.passportSeries
          : passportSeries // ignore: cast_nullable_to_non_nullable
              as String?,
      passportNumber: freezed == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isConsent: freezed == isConsent
          ? _value.isConsent
          : isConsent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PassportDataRequestCopyWith<$Res>
    implements $PassportDataRequestCopyWith<$Res> {
  factory _$$_PassportDataRequestCopyWith(_$_PassportDataRequest value,
          $Res Function(_$_PassportDataRequest) then) =
      __$$_PassportDataRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? birthDate,
      String? passportSeries,
      String? passportNumber,
      String? isConsent});
}

/// @nodoc
class __$$_PassportDataRequestCopyWithImpl<$Res>
    extends _$PassportDataRequestCopyWithImpl<$Res, _$_PassportDataRequest>
    implements _$$_PassportDataRequestCopyWith<$Res> {
  __$$_PassportDataRequestCopyWithImpl(_$_PassportDataRequest _value,
      $Res Function(_$_PassportDataRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthDate = freezed,
    Object? passportSeries = freezed,
    Object? passportNumber = freezed,
    Object? isConsent = freezed,
  }) {
    return _then(_$_PassportDataRequest(
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      passportSeries: freezed == passportSeries
          ? _value.passportSeries
          : passportSeries // ignore: cast_nullable_to_non_nullable
              as String?,
      passportNumber: freezed == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isConsent: freezed == isConsent
          ? _value.isConsent
          : isConsent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PassportDataRequest implements _PassportDataRequest {
  const _$_PassportDataRequest(
      {this.birthDate,
      this.passportSeries,
      this.passportNumber,
      this.isConsent});

  factory _$_PassportDataRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PassportDataRequestFromJson(json);

  @override
  final String? birthDate;
  @override
  final String? passportSeries;
  @override
  final String? passportNumber;
  @override
  final String? isConsent;

  @override
  String toString() {
    return 'PassportDataRequest(birthDate: $birthDate, passportSeries: $passportSeries, passportNumber: $passportNumber, isConsent: $isConsent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PassportDataRequest &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.passportSeries, passportSeries) ||
                other.passportSeries == passportSeries) &&
            (identical(other.passportNumber, passportNumber) ||
                other.passportNumber == passportNumber) &&
            (identical(other.isConsent, isConsent) ||
                other.isConsent == isConsent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, birthDate, passportSeries, passportNumber, isConsent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PassportDataRequestCopyWith<_$_PassportDataRequest> get copyWith =>
      __$$_PassportDataRequestCopyWithImpl<_$_PassportDataRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PassportDataRequestToJson(
      this,
    );
  }
}

abstract class _PassportDataRequest implements PassportDataRequest {
  const factory _PassportDataRequest(
      {final String? birthDate,
      final String? passportSeries,
      final String? passportNumber,
      final String? isConsent}) = _$_PassportDataRequest;

  factory _PassportDataRequest.fromJson(Map<String, dynamic> json) =
      _$_PassportDataRequest.fromJson;

  @override
  String? get birthDate;
  @override
  String? get passportSeries;
  @override
  String? get passportNumber;
  @override
  String? get isConsent;
  @override
  @JsonKey(ignore: true)
  _$$_PassportDataRequestCopyWith<_$_PassportDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
