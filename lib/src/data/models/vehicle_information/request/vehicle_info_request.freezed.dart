// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleInfoRequest _$VehicleInfoRequestFromJson(Map<String, dynamic> json) {
  return _VehicleInfoRequest.fromJson(json);
}

/// @nodoc
mixin _$VehicleInfoRequest {
  String? get plateNumber => throw _privateConstructorUsedError;
  TechnicalPassport? get technicalPassport =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleInfoRequestCopyWith<VehicleInfoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleInfoRequestCopyWith<$Res> {
  factory $VehicleInfoRequestCopyWith(
          VehicleInfoRequest value, $Res Function(VehicleInfoRequest) then) =
      _$VehicleInfoRequestCopyWithImpl<$Res, VehicleInfoRequest>;
  @useResult
  $Res call({String? plateNumber, TechnicalPassport? technicalPassport});

  $TechnicalPassportCopyWith<$Res>? get technicalPassport;
}

/// @nodoc
class _$VehicleInfoRequestCopyWithImpl<$Res, $Val extends VehicleInfoRequest>
    implements $VehicleInfoRequestCopyWith<$Res> {
  _$VehicleInfoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plateNumber = freezed,
    Object? technicalPassport = freezed,
  }) {
    return _then(_value.copyWith(
      plateNumber: freezed == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      technicalPassport: freezed == technicalPassport
          ? _value.technicalPassport
          : technicalPassport // ignore: cast_nullable_to_non_nullable
              as TechnicalPassport?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TechnicalPassportCopyWith<$Res>? get technicalPassport {
    if (_value.technicalPassport == null) {
      return null;
    }

    return $TechnicalPassportCopyWith<$Res>(_value.technicalPassport!, (value) {
      return _then(_value.copyWith(technicalPassport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VehicleInfoRequestCopyWith<$Res>
    implements $VehicleInfoRequestCopyWith<$Res> {
  factory _$$_VehicleInfoRequestCopyWith(_$_VehicleInfoRequest value,
          $Res Function(_$_VehicleInfoRequest) then) =
      __$$_VehicleInfoRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? plateNumber, TechnicalPassport? technicalPassport});

  @override
  $TechnicalPassportCopyWith<$Res>? get technicalPassport;
}

/// @nodoc
class __$$_VehicleInfoRequestCopyWithImpl<$Res>
    extends _$VehicleInfoRequestCopyWithImpl<$Res, _$_VehicleInfoRequest>
    implements _$$_VehicleInfoRequestCopyWith<$Res> {
  __$$_VehicleInfoRequestCopyWithImpl(
      _$_VehicleInfoRequest _value, $Res Function(_$_VehicleInfoRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plateNumber = freezed,
    Object? technicalPassport = freezed,
  }) {
    return _then(_$_VehicleInfoRequest(
      plateNumber: freezed == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      technicalPassport: freezed == technicalPassport
          ? _value.technicalPassport
          : technicalPassport // ignore: cast_nullable_to_non_nullable
              as TechnicalPassport?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleInfoRequest implements _VehicleInfoRequest {
  const _$_VehicleInfoRequest({this.plateNumber, this.technicalPassport});

  factory _$_VehicleInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleInfoRequestFromJson(json);

  @override
  final String? plateNumber;
  @override
  final TechnicalPassport? technicalPassport;

  @override
  String toString() {
    return 'VehicleInfoRequest(plateNumber: $plateNumber, technicalPassport: $technicalPassport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleInfoRequest &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber) &&
            (identical(other.technicalPassport, technicalPassport) ||
                other.technicalPassport == technicalPassport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plateNumber, technicalPassport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleInfoRequestCopyWith<_$_VehicleInfoRequest> get copyWith =>
      __$$_VehicleInfoRequestCopyWithImpl<_$_VehicleInfoRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleInfoRequestToJson(
      this,
    );
  }
}

abstract class _VehicleInfoRequest implements VehicleInfoRequest {
  const factory _VehicleInfoRequest(
      {final String? plateNumber,
      final TechnicalPassport? technicalPassport}) = _$_VehicleInfoRequest;

  factory _VehicleInfoRequest.fromJson(Map<String, dynamic> json) =
      _$_VehicleInfoRequest.fromJson;

  @override
  String? get plateNumber;
  @override
  TechnicalPassport? get technicalPassport;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleInfoRequestCopyWith<_$_VehicleInfoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

TechnicalPassport _$TechnicalPassportFromJson(Map<String, dynamic> json) {
  return _TechnicalPassport.fromJson(json);
}

/// @nodoc
mixin _$TechnicalPassport {
  String? get series => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TechnicalPassportCopyWith<TechnicalPassport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechnicalPassportCopyWith<$Res> {
  factory $TechnicalPassportCopyWith(
          TechnicalPassport value, $Res Function(TechnicalPassport) then) =
      _$TechnicalPassportCopyWithImpl<$Res, TechnicalPassport>;
  @useResult
  $Res call({String? series, String? number});
}

/// @nodoc
class _$TechnicalPassportCopyWithImpl<$Res, $Val extends TechnicalPassport>
    implements $TechnicalPassportCopyWith<$Res> {
  _$TechnicalPassportCopyWithImpl(this._value, this._then);

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
abstract class _$$_TechnicalPassportCopyWith<$Res>
    implements $TechnicalPassportCopyWith<$Res> {
  factory _$$_TechnicalPassportCopyWith(_$_TechnicalPassport value,
          $Res Function(_$_TechnicalPassport) then) =
      __$$_TechnicalPassportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? series, String? number});
}

/// @nodoc
class __$$_TechnicalPassportCopyWithImpl<$Res>
    extends _$TechnicalPassportCopyWithImpl<$Res, _$_TechnicalPassport>
    implements _$$_TechnicalPassportCopyWith<$Res> {
  __$$_TechnicalPassportCopyWithImpl(
      _$_TechnicalPassport _value, $Res Function(_$_TechnicalPassport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_TechnicalPassport(
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
class _$_TechnicalPassport implements _TechnicalPassport {
  const _$_TechnicalPassport({this.series, this.number});

  factory _$_TechnicalPassport.fromJson(Map<String, dynamic> json) =>
      _$$_TechnicalPassportFromJson(json);

  @override
  final String? series;
  @override
  final String? number;

  @override
  String toString() {
    return 'TechnicalPassport(series: $series, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TechnicalPassport &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, series, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TechnicalPassportCopyWith<_$_TechnicalPassport> get copyWith =>
      __$$_TechnicalPassportCopyWithImpl<_$_TechnicalPassport>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TechnicalPassportToJson(
      this,
    );
  }
}

abstract class _TechnicalPassport implements TechnicalPassport {
  const factory _TechnicalPassport(
      {final String? series, final String? number}) = _$_TechnicalPassport;

  factory _TechnicalPassport.fromJson(Map<String, dynamic> json) =
      _$_TechnicalPassport.fromJson;

  @override
  String? get series;
  @override
  String? get number;
  @override
  @JsonKey(ignore: true)
  _$$_TechnicalPassportCopyWith<_$_TechnicalPassport> get copyWith =>
      throw _privateConstructorUsedError;
}
