// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_passport_validation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverPassportValidation _$DriverPassportValidationFromJson(
    Map<String, dynamic> json) {
  return _DriverPassportValidation.fromJson(json);
}

/// @nodoc
mixin _$DriverPassportValidation {
  String? get pinfl => throw _privateConstructorUsedError;
  PassportData? get passport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverPassportValidationCopyWith<DriverPassportValidation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverPassportValidationCopyWith<$Res> {
  factory $DriverPassportValidationCopyWith(DriverPassportValidation value,
          $Res Function(DriverPassportValidation) then) =
      _$DriverPassportValidationCopyWithImpl<$Res, DriverPassportValidation>;
  @useResult
  $Res call({String? pinfl, PassportData? passport});

  $PassportDataCopyWith<$Res>? get passport;
}

/// @nodoc
class _$DriverPassportValidationCopyWithImpl<$Res,
        $Val extends DriverPassportValidation>
    implements $DriverPassportValidationCopyWith<$Res> {
  _$DriverPassportValidationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinfl = freezed,
    Object? passport = freezed,
  }) {
    return _then(_value.copyWith(
      pinfl: freezed == pinfl
          ? _value.pinfl
          : pinfl // ignore: cast_nullable_to_non_nullable
              as String?,
      passport: freezed == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as PassportData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PassportDataCopyWith<$Res>? get passport {
    if (_value.passport == null) {
      return null;
    }

    return $PassportDataCopyWith<$Res>(_value.passport!, (value) {
      return _then(_value.copyWith(passport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DriverPassportValidationCopyWith<$Res>
    implements $DriverPassportValidationCopyWith<$Res> {
  factory _$$_DriverPassportValidationCopyWith(
          _$_DriverPassportValidation value,
          $Res Function(_$_DriverPassportValidation) then) =
      __$$_DriverPassportValidationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? pinfl, PassportData? passport});

  @override
  $PassportDataCopyWith<$Res>? get passport;
}

/// @nodoc
class __$$_DriverPassportValidationCopyWithImpl<$Res>
    extends _$DriverPassportValidationCopyWithImpl<$Res,
        _$_DriverPassportValidation>
    implements _$$_DriverPassportValidationCopyWith<$Res> {
  __$$_DriverPassportValidationCopyWithImpl(_$_DriverPassportValidation _value,
      $Res Function(_$_DriverPassportValidation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinfl = freezed,
    Object? passport = freezed,
  }) {
    return _then(_$_DriverPassportValidation(
      pinfl: freezed == pinfl
          ? _value.pinfl
          : pinfl // ignore: cast_nullable_to_non_nullable
              as String?,
      passport: freezed == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as PassportData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverPassportValidation implements _DriverPassportValidation {
  const _$_DriverPassportValidation({this.pinfl, this.passport});

  factory _$_DriverPassportValidation.fromJson(Map<String, dynamic> json) =>
      _$$_DriverPassportValidationFromJson(json);

  @override
  final String? pinfl;
  @override
  final PassportData? passport;

  @override
  String toString() {
    return 'DriverPassportValidation(pinfl: $pinfl, passport: $passport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverPassportValidation &&
            (identical(other.pinfl, pinfl) || other.pinfl == pinfl) &&
            (identical(other.passport, passport) ||
                other.passport == passport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pinfl, passport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverPassportValidationCopyWith<_$_DriverPassportValidation>
      get copyWith => __$$_DriverPassportValidationCopyWithImpl<
          _$_DriverPassportValidation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverPassportValidationToJson(
      this,
    );
  }
}

abstract class _DriverPassportValidation implements DriverPassportValidation {
  const factory _DriverPassportValidation(
      {final String? pinfl,
      final PassportData? passport}) = _$_DriverPassportValidation;

  factory _DriverPassportValidation.fromJson(Map<String, dynamic> json) =
      _$_DriverPassportValidation.fromJson;

  @override
  String? get pinfl;
  @override
  PassportData? get passport;
  @override
  @JsonKey(ignore: true)
  _$$_DriverPassportValidationCopyWith<_$_DriverPassportValidation>
      get copyWith => throw _privateConstructorUsedError;
}

PassportData _$PassportDataFromJson(Map<String, dynamic> json) {
  return _PassportData.fromJson(json);
}

/// @nodoc
mixin _$PassportData {
  String? get series => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassportDataCopyWith<PassportData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportDataCopyWith<$Res> {
  factory $PassportDataCopyWith(
          PassportData value, $Res Function(PassportData) then) =
      _$PassportDataCopyWithImpl<$Res, PassportData>;
  @useResult
  $Res call({String? series, String? number});
}

/// @nodoc
class _$PassportDataCopyWithImpl<$Res, $Val extends PassportData>
    implements $PassportDataCopyWith<$Res> {
  _$PassportDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = freezed,
    Object? number = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PassportDataCopyWith<$Res>
    implements $PassportDataCopyWith<$Res> {
  factory _$$_PassportDataCopyWith(
          _$_PassportData value, $Res Function(_$_PassportData) then) =
      __$$_PassportDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? series, String? number});
}

/// @nodoc
class __$$_PassportDataCopyWithImpl<$Res>
    extends _$PassportDataCopyWithImpl<$Res, _$_PassportData>
    implements _$$_PassportDataCopyWith<$Res> {
  __$$_PassportDataCopyWithImpl(
      _$_PassportData _value, $Res Function(_$_PassportData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_PassportData(
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PassportData implements _PassportData {
  const _$_PassportData({this.series, this.number});

  factory _$_PassportData.fromJson(Map<String, dynamic> json) =>
      _$$_PassportDataFromJson(json);

  @override
  final String? series;
  @override
  final String? number;

  @override
  String toString() {
    return 'PassportData(series: $series, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PassportData &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, series, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PassportDataCopyWith<_$_PassportData> get copyWith =>
      __$$_PassportDataCopyWithImpl<_$_PassportData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PassportDataToJson(
      this,
    );
  }
}

abstract class _PassportData implements PassportData {
  const factory _PassportData({final String? series, final String? number}) =
      _$_PassportData;

  factory _PassportData.fromJson(Map<String, dynamic> json) =
      _$_PassportData.fromJson;

  @override
  String? get series;
  @override
  String? get number;
  @override
  @JsonKey(ignore: true)
  _$$_PassportDataCopyWith<_$_PassportData> get copyWith =>
      throw _privateConstructorUsedError;
}
