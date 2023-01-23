// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_passport_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverPassportInputRequest _$DriverPassportInputRequestFromJson(
    Map<String, dynamic> json) {
  return _DriverPassportInputRequest.fromJson(json);
}

/// @nodoc
mixin _$DriverPassportInputRequest {
  String? get birthdate => throw _privateConstructorUsedError;
  PassportInputFields? get passport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverPassportInputRequestCopyWith<DriverPassportInputRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverPassportInputRequestCopyWith<$Res> {
  factory $DriverPassportInputRequestCopyWith(DriverPassportInputRequest value,
          $Res Function(DriverPassportInputRequest) then) =
      _$DriverPassportInputRequestCopyWithImpl<$Res,
          DriverPassportInputRequest>;
  @useResult
  $Res call({String? birthdate, PassportInputFields? passport});

  $PassportInputFieldsCopyWith<$Res>? get passport;
}

/// @nodoc
class _$DriverPassportInputRequestCopyWithImpl<$Res,
        $Val extends DriverPassportInputRequest>
    implements $DriverPassportInputRequestCopyWith<$Res> {
  _$DriverPassportInputRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthdate = freezed,
    Object? passport = freezed,
  }) {
    return _then(_value.copyWith(
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      passport: freezed == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as PassportInputFields?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PassportInputFieldsCopyWith<$Res>? get passport {
    if (_value.passport == null) {
      return null;
    }

    return $PassportInputFieldsCopyWith<$Res>(_value.passport!, (value) {
      return _then(_value.copyWith(passport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DriverPassportInputRequestCopyWith<$Res>
    implements $DriverPassportInputRequestCopyWith<$Res> {
  factory _$$_DriverPassportInputRequestCopyWith(
          _$_DriverPassportInputRequest value,
          $Res Function(_$_DriverPassportInputRequest) then) =
      __$$_DriverPassportInputRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? birthdate, PassportInputFields? passport});

  @override
  $PassportInputFieldsCopyWith<$Res>? get passport;
}

/// @nodoc
class __$$_DriverPassportInputRequestCopyWithImpl<$Res>
    extends _$DriverPassportInputRequestCopyWithImpl<$Res,
        _$_DriverPassportInputRequest>
    implements _$$_DriverPassportInputRequestCopyWith<$Res> {
  __$$_DriverPassportInputRequestCopyWithImpl(
      _$_DriverPassportInputRequest _value,
      $Res Function(_$_DriverPassportInputRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthdate = freezed,
    Object? passport = freezed,
  }) {
    return _then(_$_DriverPassportInputRequest(
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      passport: freezed == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as PassportInputFields?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverPassportInputRequest implements _DriverPassportInputRequest {
  const _$_DriverPassportInputRequest({this.birthdate, this.passport});

  factory _$_DriverPassportInputRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DriverPassportInputRequestFromJson(json);

  @override
  final String? birthdate;
  @override
  final PassportInputFields? passport;

  @override
  String toString() {
    return 'DriverPassportInputRequest(birthdate: $birthdate, passport: $passport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverPassportInputRequest &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.passport, passport) ||
                other.passport == passport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, birthdate, passport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverPassportInputRequestCopyWith<_$_DriverPassportInputRequest>
      get copyWith => __$$_DriverPassportInputRequestCopyWithImpl<
          _$_DriverPassportInputRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverPassportInputRequestToJson(
      this,
    );
  }
}

abstract class _DriverPassportInputRequest
    implements DriverPassportInputRequest {
  const factory _DriverPassportInputRequest(
      {final String? birthdate,
      final PassportInputFields? passport}) = _$_DriverPassportInputRequest;

  factory _DriverPassportInputRequest.fromJson(Map<String, dynamic> json) =
      _$_DriverPassportInputRequest.fromJson;

  @override
  String? get birthdate;
  @override
  PassportInputFields? get passport;
  @override
  @JsonKey(ignore: true)
  _$$_DriverPassportInputRequestCopyWith<_$_DriverPassportInputRequest>
      get copyWith => throw _privateConstructorUsedError;
}

PassportInputFields _$PassportInputFieldsFromJson(Map<String, dynamic> json) {
  return _PassportInputFields.fromJson(json);
}

/// @nodoc
mixin _$PassportInputFields {
  String? get series => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassportInputFieldsCopyWith<PassportInputFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportInputFieldsCopyWith<$Res> {
  factory $PassportInputFieldsCopyWith(
          PassportInputFields value, $Res Function(PassportInputFields) then) =
      _$PassportInputFieldsCopyWithImpl<$Res, PassportInputFields>;
  @useResult
  $Res call({String? series, String? number});
}

/// @nodoc
class _$PassportInputFieldsCopyWithImpl<$Res, $Val extends PassportInputFields>
    implements $PassportInputFieldsCopyWith<$Res> {
  _$PassportInputFieldsCopyWithImpl(this._value, this._then);

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
abstract class _$$_PassportInputFieldsCopyWith<$Res>
    implements $PassportInputFieldsCopyWith<$Res> {
  factory _$$_PassportInputFieldsCopyWith(_$_PassportInputFields value,
          $Res Function(_$_PassportInputFields) then) =
      __$$_PassportInputFieldsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? series, String? number});
}

/// @nodoc
class __$$_PassportInputFieldsCopyWithImpl<$Res>
    extends _$PassportInputFieldsCopyWithImpl<$Res, _$_PassportInputFields>
    implements _$$_PassportInputFieldsCopyWith<$Res> {
  __$$_PassportInputFieldsCopyWithImpl(_$_PassportInputFields _value,
      $Res Function(_$_PassportInputFields) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_PassportInputFields(
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
class _$_PassportInputFields implements _PassportInputFields {
  const _$_PassportInputFields({this.series, this.number});

  factory _$_PassportInputFields.fromJson(Map<String, dynamic> json) =>
      _$$_PassportInputFieldsFromJson(json);

  @override
  final String? series;
  @override
  final String? number;

  @override
  String toString() {
    return 'PassportInputFields(series: $series, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PassportInputFields &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, series, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PassportInputFieldsCopyWith<_$_PassportInputFields> get copyWith =>
      __$$_PassportInputFieldsCopyWithImpl<_$_PassportInputFields>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PassportInputFieldsToJson(
      this,
    );
  }
}

abstract class _PassportInputFields implements PassportInputFields {
  const factory _PassportInputFields(
      {final String? series, final String? number}) = _$_PassportInputFields;

  factory _PassportInputFields.fromJson(Map<String, dynamic> json) =
      _$_PassportInputFields.fromJson;

  @override
  String? get series;
  @override
  String? get number;
  @override
  @JsonKey(ignore: true)
  _$$_PassportInputFieldsCopyWith<_$_PassportInputFields> get copyWith =>
      throw _privateConstructorUsedError;
}
