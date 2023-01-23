// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_passport_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverPassportInputResponse _$DriverPassportInputResponseFromJson(
    Map<String, dynamic> json) {
  return _DriverPassportInputResponse.fromJson(json);
}

/// @nodoc
mixin _$DriverPassportInputResponse {
  String? get fullName => throw _privateConstructorUsedError;
  DriverLicense? get driverLicense => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverPassportInputResponseCopyWith<DriverPassportInputResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverPassportInputResponseCopyWith<$Res> {
  factory $DriverPassportInputResponseCopyWith(
          DriverPassportInputResponse value,
          $Res Function(DriverPassportInputResponse) then) =
      _$DriverPassportInputResponseCopyWithImpl<$Res,
          DriverPassportInputResponse>;
  @useResult
  $Res call({String? fullName, DriverLicense? driverLicense});

  $DriverLicenseCopyWith<$Res>? get driverLicense;
}

/// @nodoc
class _$DriverPassportInputResponseCopyWithImpl<$Res,
        $Val extends DriverPassportInputResponse>
    implements $DriverPassportInputResponseCopyWith<$Res> {
  _$DriverPassportInputResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? driverLicense = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverLicense: freezed == driverLicense
          ? _value.driverLicense
          : driverLicense // ignore: cast_nullable_to_non_nullable
              as DriverLicense?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverLicenseCopyWith<$Res>? get driverLicense {
    if (_value.driverLicense == null) {
      return null;
    }

    return $DriverLicenseCopyWith<$Res>(_value.driverLicense!, (value) {
      return _then(_value.copyWith(driverLicense: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DriverPassportInputResponseCopyWith<$Res>
    implements $DriverPassportInputResponseCopyWith<$Res> {
  factory _$$_DriverPassportInputResponseCopyWith(
          _$_DriverPassportInputResponse value,
          $Res Function(_$_DriverPassportInputResponse) then) =
      __$$_DriverPassportInputResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fullName, DriverLicense? driverLicense});

  @override
  $DriverLicenseCopyWith<$Res>? get driverLicense;
}

/// @nodoc
class __$$_DriverPassportInputResponseCopyWithImpl<$Res>
    extends _$DriverPassportInputResponseCopyWithImpl<$Res,
        _$_DriverPassportInputResponse>
    implements _$$_DriverPassportInputResponseCopyWith<$Res> {
  __$$_DriverPassportInputResponseCopyWithImpl(
      _$_DriverPassportInputResponse _value,
      $Res Function(_$_DriverPassportInputResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? driverLicense = freezed,
  }) {
    return _then(_$_DriverPassportInputResponse(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverLicense: freezed == driverLicense
          ? _value.driverLicense
          : driverLicense // ignore: cast_nullable_to_non_nullable
              as DriverLicense?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverPassportInputResponse implements _DriverPassportInputResponse {
  const _$_DriverPassportInputResponse({this.fullName, this.driverLicense});

  factory _$_DriverPassportInputResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DriverPassportInputResponseFromJson(json);

  @override
  final String? fullName;
  @override
  final DriverLicense? driverLicense;

  @override
  String toString() {
    return 'DriverPassportInputResponse(fullName: $fullName, driverLicense: $driverLicense)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverPassportInputResponse &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.driverLicense, driverLicense) ||
                other.driverLicense == driverLicense));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, driverLicense);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverPassportInputResponseCopyWith<_$_DriverPassportInputResponse>
      get copyWith => __$$_DriverPassportInputResponseCopyWithImpl<
          _$_DriverPassportInputResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverPassportInputResponseToJson(
      this,
    );
  }
}

abstract class _DriverPassportInputResponse
    implements DriverPassportInputResponse {
  const factory _DriverPassportInputResponse(
      {final String? fullName,
      final DriverLicense? driverLicense}) = _$_DriverPassportInputResponse;

  factory _DriverPassportInputResponse.fromJson(Map<String, dynamic> json) =
      _$_DriverPassportInputResponse.fromJson;

  @override
  String? get fullName;
  @override
  DriverLicense? get driverLicense;
  @override
  @JsonKey(ignore: true)
  _$$_DriverPassportInputResponseCopyWith<_$_DriverPassportInputResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DriverLicense _$DriverLicenseFromJson(Map<String, dynamic> json) {
  return _DriverLicense.fromJson(json);
}

/// @nodoc
mixin _$DriverLicense {
  String? get series => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverLicenseCopyWith<DriverLicense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverLicenseCopyWith<$Res> {
  factory $DriverLicenseCopyWith(
          DriverLicense value, $Res Function(DriverLicense) then) =
      _$DriverLicenseCopyWithImpl<$Res, DriverLicense>;
  @useResult
  $Res call({String? series, String? number, String? startDate});
}

/// @nodoc
class _$DriverLicenseCopyWithImpl<$Res, $Val extends DriverLicense>
    implements $DriverLicenseCopyWith<$Res> {
  _$DriverLicenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = freezed,
    Object? number = freezed,
    Object? startDate = freezed,
  }) {
    return _then(_value.copyWith(
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DriverLicenseCopyWith<$Res>
    implements $DriverLicenseCopyWith<$Res> {
  factory _$$_DriverLicenseCopyWith(
          _$_DriverLicense value, $Res Function(_$_DriverLicense) then) =
      __$$_DriverLicenseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? series, String? number, String? startDate});
}

/// @nodoc
class __$$_DriverLicenseCopyWithImpl<$Res>
    extends _$DriverLicenseCopyWithImpl<$Res, _$_DriverLicense>
    implements _$$_DriverLicenseCopyWith<$Res> {
  __$$_DriverLicenseCopyWithImpl(
      _$_DriverLicense _value, $Res Function(_$_DriverLicense) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = freezed,
    Object? number = freezed,
    Object? startDate = freezed,
  }) {
    return _then(_$_DriverLicense(
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverLicense implements _DriverLicense {
  const _$_DriverLicense({this.series, this.number, this.startDate});

  factory _$_DriverLicense.fromJson(Map<String, dynamic> json) =>
      _$$_DriverLicenseFromJson(json);

  @override
  final String? series;
  @override
  final String? number;
  @override
  final String? startDate;

  @override
  String toString() {
    return 'DriverLicense(series: $series, number: $number, startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverLicense &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, series, number, startDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverLicenseCopyWith<_$_DriverLicense> get copyWith =>
      __$$_DriverLicenseCopyWithImpl<_$_DriverLicense>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverLicenseToJson(
      this,
    );
  }
}

abstract class _DriverLicense implements DriverLicense {
  const factory _DriverLicense(
      {final String? series,
      final String? number,
      final String? startDate}) = _$_DriverLicense;

  factory _DriverLicense.fromJson(Map<String, dynamic> json) =
      _$_DriverLicense.fromJson;

  @override
  String? get series;
  @override
  String? get number;
  @override
  String? get startDate;
  @override
  @JsonKey(ignore: true)
  _$$_DriverLicenseCopyWith<_$_DriverLicense> get copyWith =>
      throw _privateConstructorUsedError;
}
