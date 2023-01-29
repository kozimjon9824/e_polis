// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookModel _$BookModelFromJson(Map<String, dynamic> json) {
  return _BookModel.fromJson(json);
}

/// @nodoc
mixin _$BookModel {
  ApplicantModel? get applicant => throw _privateConstructorUsedError;
  CalculationModel? get calculation => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  VehicleNumber? get vehicle => throw _privateConstructorUsedError;
  List<DriverModel>? get drivers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookModelCopyWith<BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookModelCopyWith<$Res> {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) then) =
      _$BookModelCopyWithImpl<$Res, BookModel>;
  @useResult
  $Res call(
      {ApplicantModel? applicant,
      CalculationModel? calculation,
      String? startDate,
      VehicleNumber? vehicle,
      List<DriverModel>? drivers});

  $ApplicantModelCopyWith<$Res>? get applicant;
  $CalculationModelCopyWith<$Res>? get calculation;
  $VehicleNumberCopyWith<$Res>? get vehicle;
}

/// @nodoc
class _$BookModelCopyWithImpl<$Res, $Val extends BookModel>
    implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicant = freezed,
    Object? calculation = freezed,
    Object? startDate = freezed,
    Object? vehicle = freezed,
    Object? drivers = freezed,
  }) {
    return _then(_value.copyWith(
      applicant: freezed == applicant
          ? _value.applicant
          : applicant // ignore: cast_nullable_to_non_nullable
              as ApplicantModel?,
      calculation: freezed == calculation
          ? _value.calculation
          : calculation // ignore: cast_nullable_to_non_nullable
              as CalculationModel?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as VehicleNumber?,
      drivers: freezed == drivers
          ? _value.drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<DriverModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApplicantModelCopyWith<$Res>? get applicant {
    if (_value.applicant == null) {
      return null;
    }

    return $ApplicantModelCopyWith<$Res>(_value.applicant!, (value) {
      return _then(_value.copyWith(applicant: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CalculationModelCopyWith<$Res>? get calculation {
    if (_value.calculation == null) {
      return null;
    }

    return $CalculationModelCopyWith<$Res>(_value.calculation!, (value) {
      return _then(_value.copyWith(calculation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleNumberCopyWith<$Res>? get vehicle {
    if (_value.vehicle == null) {
      return null;
    }

    return $VehicleNumberCopyWith<$Res>(_value.vehicle!, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookModelCopyWith<$Res> implements $BookModelCopyWith<$Res> {
  factory _$$_BookModelCopyWith(
          _$_BookModel value, $Res Function(_$_BookModel) then) =
      __$$_BookModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApplicantModel? applicant,
      CalculationModel? calculation,
      String? startDate,
      VehicleNumber? vehicle,
      List<DriverModel>? drivers});

  @override
  $ApplicantModelCopyWith<$Res>? get applicant;
  @override
  $CalculationModelCopyWith<$Res>? get calculation;
  @override
  $VehicleNumberCopyWith<$Res>? get vehicle;
}

/// @nodoc
class __$$_BookModelCopyWithImpl<$Res>
    extends _$BookModelCopyWithImpl<$Res, _$_BookModel>
    implements _$$_BookModelCopyWith<$Res> {
  __$$_BookModelCopyWithImpl(
      _$_BookModel _value, $Res Function(_$_BookModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicant = freezed,
    Object? calculation = freezed,
    Object? startDate = freezed,
    Object? vehicle = freezed,
    Object? drivers = freezed,
  }) {
    return _then(_$_BookModel(
      applicant: freezed == applicant
          ? _value.applicant
          : applicant // ignore: cast_nullable_to_non_nullable
              as ApplicantModel?,
      calculation: freezed == calculation
          ? _value.calculation
          : calculation // ignore: cast_nullable_to_non_nullable
              as CalculationModel?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as VehicleNumber?,
      drivers: freezed == drivers
          ? _value._drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<DriverModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookModel implements _BookModel {
  const _$_BookModel(
      {this.applicant,
      this.calculation,
      this.startDate,
      this.vehicle,
      final List<DriverModel>? drivers})
      : _drivers = drivers;

  factory _$_BookModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookModelFromJson(json);

  @override
  final ApplicantModel? applicant;
  @override
  final CalculationModel? calculation;
  @override
  final String? startDate;
  @override
  final VehicleNumber? vehicle;
  final List<DriverModel>? _drivers;
  @override
  List<DriverModel>? get drivers {
    final value = _drivers;
    if (value == null) return null;
    if (_drivers is EqualUnmodifiableListView) return _drivers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookModel(applicant: $applicant, calculation: $calculation, startDate: $startDate, vehicle: $vehicle, drivers: $drivers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookModel &&
            (identical(other.applicant, applicant) ||
                other.applicant == applicant) &&
            (identical(other.calculation, calculation) ||
                other.calculation == calculation) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            const DeepCollectionEquality().equals(other._drivers, _drivers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, applicant, calculation,
      startDate, vehicle, const DeepCollectionEquality().hash(_drivers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookModelCopyWith<_$_BookModel> get copyWith =>
      __$$_BookModelCopyWithImpl<_$_BookModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookModelToJson(
      this,
    );
  }
}

abstract class _BookModel implements BookModel {
  const factory _BookModel(
      {final ApplicantModel? applicant,
      final CalculationModel? calculation,
      final String? startDate,
      final VehicleNumber? vehicle,
      final List<DriverModel>? drivers}) = _$_BookModel;

  factory _BookModel.fromJson(Map<String, dynamic> json) =
      _$_BookModel.fromJson;

  @override
  ApplicantModel? get applicant;
  @override
  CalculationModel? get calculation;
  @override
  String? get startDate;
  @override
  VehicleNumber? get vehicle;
  @override
  List<DriverModel>? get drivers;
  @override
  @JsonKey(ignore: true)
  _$$_BookModelCopyWith<_$_BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ApplicantPassport _$ApplicantPassportFromJson(Map<String, dynamic> json) {
  return _ApplicantPassport.fromJson(json);
}

/// @nodoc
mixin _$ApplicantPassport {
  String? get series => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  String? get pinfl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicantPassportCopyWith<ApplicantPassport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicantPassportCopyWith<$Res> {
  factory $ApplicantPassportCopyWith(
          ApplicantPassport value, $Res Function(ApplicantPassport) then) =
      _$ApplicantPassportCopyWithImpl<$Res, ApplicantPassport>;
  @useResult
  $Res call({String? series, String? number, String? pinfl});
}

/// @nodoc
class _$ApplicantPassportCopyWithImpl<$Res, $Val extends ApplicantPassport>
    implements $ApplicantPassportCopyWith<$Res> {
  _$ApplicantPassportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = freezed,
    Object? number = freezed,
    Object? pinfl = freezed,
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
      pinfl: freezed == pinfl
          ? _value.pinfl
          : pinfl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApplicantPassportCopyWith<$Res>
    implements $ApplicantPassportCopyWith<$Res> {
  factory _$$_ApplicantPassportCopyWith(_$_ApplicantPassport value,
          $Res Function(_$_ApplicantPassport) then) =
      __$$_ApplicantPassportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? series, String? number, String? pinfl});
}

/// @nodoc
class __$$_ApplicantPassportCopyWithImpl<$Res>
    extends _$ApplicantPassportCopyWithImpl<$Res, _$_ApplicantPassport>
    implements _$$_ApplicantPassportCopyWith<$Res> {
  __$$_ApplicantPassportCopyWithImpl(
      _$_ApplicantPassport _value, $Res Function(_$_ApplicantPassport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = freezed,
    Object? number = freezed,
    Object? pinfl = freezed,
  }) {
    return _then(_$_ApplicantPassport(
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
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
class _$_ApplicantPassport implements _ApplicantPassport {
  const _$_ApplicantPassport({this.series, this.number, this.pinfl});

  factory _$_ApplicantPassport.fromJson(Map<String, dynamic> json) =>
      _$$_ApplicantPassportFromJson(json);

  @override
  final String? series;
  @override
  final String? number;
  @override
  final String? pinfl;

  @override
  String toString() {
    return 'ApplicantPassport(series: $series, number: $number, pinfl: $pinfl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicantPassport &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.pinfl, pinfl) || other.pinfl == pinfl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, series, number, pinfl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicantPassportCopyWith<_$_ApplicantPassport> get copyWith =>
      __$$_ApplicantPassportCopyWithImpl<_$_ApplicantPassport>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApplicantPassportToJson(
      this,
    );
  }
}

abstract class _ApplicantPassport implements ApplicantPassport {
  const factory _ApplicantPassport(
      {final String? series,
      final String? number,
      final String? pinfl}) = _$_ApplicantPassport;

  factory _ApplicantPassport.fromJson(Map<String, dynamic> json) =
      _$_ApplicantPassport.fromJson;

  @override
  String? get series;
  @override
  String? get number;
  @override
  String? get pinfl;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicantPassportCopyWith<_$_ApplicantPassport> get copyWith =>
      throw _privateConstructorUsedError;
}

ApplicantModel _$ApplicantModelFromJson(Map<String, dynamic> json) {
  return _ApplicantModel.fromJson(json);
}

/// @nodoc
mixin _$ApplicantModel {
  ApplicantPassport? get passport => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicantModelCopyWith<ApplicantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicantModelCopyWith<$Res> {
  factory $ApplicantModelCopyWith(
          ApplicantModel value, $Res Function(ApplicantModel) then) =
      _$ApplicantModelCopyWithImpl<$Res, ApplicantModel>;
  @useResult
  $Res call({ApplicantPassport? passport, String? phone});

  $ApplicantPassportCopyWith<$Res>? get passport;
}

/// @nodoc
class _$ApplicantModelCopyWithImpl<$Res, $Val extends ApplicantModel>
    implements $ApplicantModelCopyWith<$Res> {
  _$ApplicantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passport = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      passport: freezed == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as ApplicantPassport?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApplicantPassportCopyWith<$Res>? get passport {
    if (_value.passport == null) {
      return null;
    }

    return $ApplicantPassportCopyWith<$Res>(_value.passport!, (value) {
      return _then(_value.copyWith(passport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApplicantModelCopyWith<$Res>
    implements $ApplicantModelCopyWith<$Res> {
  factory _$$_ApplicantModelCopyWith(
          _$_ApplicantModel value, $Res Function(_$_ApplicantModel) then) =
      __$$_ApplicantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApplicantPassport? passport, String? phone});

  @override
  $ApplicantPassportCopyWith<$Res>? get passport;
}

/// @nodoc
class __$$_ApplicantModelCopyWithImpl<$Res>
    extends _$ApplicantModelCopyWithImpl<$Res, _$_ApplicantModel>
    implements _$$_ApplicantModelCopyWith<$Res> {
  __$$_ApplicantModelCopyWithImpl(
      _$_ApplicantModel _value, $Res Function(_$_ApplicantModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passport = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_ApplicantModel(
      passport: freezed == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as ApplicantPassport?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApplicantModel implements _ApplicantModel {
  const _$_ApplicantModel({this.passport, this.phone});

  factory _$_ApplicantModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApplicantModelFromJson(json);

  @override
  final ApplicantPassport? passport;
  @override
  final String? phone;

  @override
  String toString() {
    return 'ApplicantModel(passport: $passport, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicantModel &&
            (identical(other.passport, passport) ||
                other.passport == passport) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, passport, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicantModelCopyWith<_$_ApplicantModel> get copyWith =>
      __$$_ApplicantModelCopyWithImpl<_$_ApplicantModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApplicantModelToJson(
      this,
    );
  }
}

abstract class _ApplicantModel implements ApplicantModel {
  const factory _ApplicantModel(
      {final ApplicantPassport? passport,
      final String? phone}) = _$_ApplicantModel;

  factory _ApplicantModel.fromJson(Map<String, dynamic> json) =
      _$_ApplicantModel.fromJson;

  @override
  ApplicantPassport? get passport;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicantModelCopyWith<_$_ApplicantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CalculationModel _$CalculationModelFromJson(Map<String, dynamic> json) {
  return _CalculationModel.fromJson(json);
}

/// @nodoc
mixin _$CalculationModel {
  int? get region => throw _privateConstructorUsedError;
  int? get vehicleType => throw _privateConstructorUsedError;
  bool? get isVip => throw _privateConstructorUsedError;
  String? get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculationModelCopyWith<CalculationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculationModelCopyWith<$Res> {
  factory $CalculationModelCopyWith(
          CalculationModel value, $Res Function(CalculationModel) then) =
      _$CalculationModelCopyWithImpl<$Res, CalculationModel>;
  @useResult
  $Res call({int? region, int? vehicleType, bool? isVip, String? period});
}

/// @nodoc
class _$CalculationModelCopyWithImpl<$Res, $Val extends CalculationModel>
    implements $CalculationModelCopyWith<$Res> {
  _$CalculationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = freezed,
    Object? vehicleType = freezed,
    Object? isVip = freezed,
    Object? period = freezed,
  }) {
    return _then(_value.copyWith(
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleType: freezed == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      isVip: freezed == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalculationModelCopyWith<$Res>
    implements $CalculationModelCopyWith<$Res> {
  factory _$$_CalculationModelCopyWith(
          _$_CalculationModel value, $Res Function(_$_CalculationModel) then) =
      __$$_CalculationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? region, int? vehicleType, bool? isVip, String? period});
}

/// @nodoc
class __$$_CalculationModelCopyWithImpl<$Res>
    extends _$CalculationModelCopyWithImpl<$Res, _$_CalculationModel>
    implements _$$_CalculationModelCopyWith<$Res> {
  __$$_CalculationModelCopyWithImpl(
      _$_CalculationModel _value, $Res Function(_$_CalculationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = freezed,
    Object? vehicleType = freezed,
    Object? isVip = freezed,
    Object? period = freezed,
  }) {
    return _then(_$_CalculationModel(
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleType: freezed == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      isVip: freezed == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalculationModel implements _CalculationModel {
  const _$_CalculationModel(
      {this.region, this.vehicleType, this.isVip, this.period});

  factory _$_CalculationModel.fromJson(Map<String, dynamic> json) =>
      _$$_CalculationModelFromJson(json);

  @override
  final int? region;
  @override
  final int? vehicleType;
  @override
  final bool? isVip;
  @override
  final String? period;

  @override
  String toString() {
    return 'CalculationModel(region: $region, vehicleType: $vehicleType, isVip: $isVip, period: $period)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalculationModel &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.isVip, isVip) || other.isVip == isVip) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, region, vehicleType, isVip, period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalculationModelCopyWith<_$_CalculationModel> get copyWith =>
      __$$_CalculationModelCopyWithImpl<_$_CalculationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalculationModelToJson(
      this,
    );
  }
}

abstract class _CalculationModel implements CalculationModel {
  const factory _CalculationModel(
      {final int? region,
      final int? vehicleType,
      final bool? isVip,
      final String? period}) = _$_CalculationModel;

  factory _CalculationModel.fromJson(Map<String, dynamic> json) =
      _$_CalculationModel.fromJson;

  @override
  int? get region;
  @override
  int? get vehicleType;
  @override
  bool? get isVip;
  @override
  String? get period;
  @override
  @JsonKey(ignore: true)
  _$$_CalculationModelCopyWith<_$_CalculationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverModel _$DriverModelFromJson(Map<String, dynamic> json) {
  return _DriverModel.fromJson(json);
}

/// @nodoc
mixin _$DriverModel {
  String? get birthDate => throw _privateConstructorUsedError;
  int? get relative => throw _privateConstructorUsedError;
  DriverPassport? get passport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverModelCopyWith<DriverModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverModelCopyWith<$Res> {
  factory $DriverModelCopyWith(
          DriverModel value, $Res Function(DriverModel) then) =
      _$DriverModelCopyWithImpl<$Res, DriverModel>;
  @useResult
  $Res call({String? birthDate, int? relative, DriverPassport? passport});

  $DriverPassportCopyWith<$Res>? get passport;
}

/// @nodoc
class _$DriverModelCopyWithImpl<$Res, $Val extends DriverModel>
    implements $DriverModelCopyWith<$Res> {
  _$DriverModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthDate = freezed,
    Object? relative = freezed,
    Object? passport = freezed,
  }) {
    return _then(_value.copyWith(
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      relative: freezed == relative
          ? _value.relative
          : relative // ignore: cast_nullable_to_non_nullable
              as int?,
      passport: freezed == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as DriverPassport?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverPassportCopyWith<$Res>? get passport {
    if (_value.passport == null) {
      return null;
    }

    return $DriverPassportCopyWith<$Res>(_value.passport!, (value) {
      return _then(_value.copyWith(passport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DriverModelCopyWith<$Res>
    implements $DriverModelCopyWith<$Res> {
  factory _$$_DriverModelCopyWith(
          _$_DriverModel value, $Res Function(_$_DriverModel) then) =
      __$$_DriverModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? birthDate, int? relative, DriverPassport? passport});

  @override
  $DriverPassportCopyWith<$Res>? get passport;
}

/// @nodoc
class __$$_DriverModelCopyWithImpl<$Res>
    extends _$DriverModelCopyWithImpl<$Res, _$_DriverModel>
    implements _$$_DriverModelCopyWith<$Res> {
  __$$_DriverModelCopyWithImpl(
      _$_DriverModel _value, $Res Function(_$_DriverModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthDate = freezed,
    Object? relative = freezed,
    Object? passport = freezed,
  }) {
    return _then(_$_DriverModel(
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      relative: freezed == relative
          ? _value.relative
          : relative // ignore: cast_nullable_to_non_nullable
              as int?,
      passport: freezed == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as DriverPassport?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverModel implements _DriverModel {
  const _$_DriverModel({this.birthDate, this.relative, this.passport});

  factory _$_DriverModel.fromJson(Map<String, dynamic> json) =>
      _$$_DriverModelFromJson(json);

  @override
  final String? birthDate;
  @override
  final int? relative;
  @override
  final DriverPassport? passport;

  @override
  String toString() {
    return 'DriverModel(birthDate: $birthDate, relative: $relative, passport: $passport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverModel &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.relative, relative) ||
                other.relative == relative) &&
            (identical(other.passport, passport) ||
                other.passport == passport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, birthDate, relative, passport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverModelCopyWith<_$_DriverModel> get copyWith =>
      __$$_DriverModelCopyWithImpl<_$_DriverModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverModelToJson(
      this,
    );
  }
}

abstract class _DriverModel implements DriverModel {
  const factory _DriverModel(
      {final String? birthDate,
      final int? relative,
      final DriverPassport? passport}) = _$_DriverModel;

  factory _DriverModel.fromJson(Map<String, dynamic> json) =
      _$_DriverModel.fromJson;

  @override
  String? get birthDate;
  @override
  int? get relative;
  @override
  DriverPassport? get passport;
  @override
  @JsonKey(ignore: true)
  _$$_DriverModelCopyWith<_$_DriverModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverPassport _$DriverPassportFromJson(Map<String, dynamic> json) {
  return _DriverPassport.fromJson(json);
}

/// @nodoc
mixin _$DriverPassport {
  String? get series => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverPassportCopyWith<DriverPassport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverPassportCopyWith<$Res> {
  factory $DriverPassportCopyWith(
          DriverPassport value, $Res Function(DriverPassport) then) =
      _$DriverPassportCopyWithImpl<$Res, DriverPassport>;
  @useResult
  $Res call({String? series, String? number});
}

/// @nodoc
class _$DriverPassportCopyWithImpl<$Res, $Val extends DriverPassport>
    implements $DriverPassportCopyWith<$Res> {
  _$DriverPassportCopyWithImpl(this._value, this._then);

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
abstract class _$$_DriverPassportCopyWith<$Res>
    implements $DriverPassportCopyWith<$Res> {
  factory _$$_DriverPassportCopyWith(
          _$_DriverPassport value, $Res Function(_$_DriverPassport) then) =
      __$$_DriverPassportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? series, String? number});
}

/// @nodoc
class __$$_DriverPassportCopyWithImpl<$Res>
    extends _$DriverPassportCopyWithImpl<$Res, _$_DriverPassport>
    implements _$$_DriverPassportCopyWith<$Res> {
  __$$_DriverPassportCopyWithImpl(
      _$_DriverPassport _value, $Res Function(_$_DriverPassport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_DriverPassport(
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
class _$_DriverPassport implements _DriverPassport {
  const _$_DriverPassport({this.series, this.number});

  factory _$_DriverPassport.fromJson(Map<String, dynamic> json) =>
      _$$_DriverPassportFromJson(json);

  @override
  final String? series;
  @override
  final String? number;

  @override
  String toString() {
    return 'DriverPassport(series: $series, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriverPassport &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, series, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DriverPassportCopyWith<_$_DriverPassport> get copyWith =>
      __$$_DriverPassportCopyWithImpl<_$_DriverPassport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverPassportToJson(
      this,
    );
  }
}

abstract class _DriverPassport implements DriverPassport {
  const factory _DriverPassport({final String? series, final String? number}) =
      _$_DriverPassport;

  factory _DriverPassport.fromJson(Map<String, dynamic> json) =
      _$_DriverPassport.fromJson;

  @override
  String? get series;
  @override
  String? get number;
  @override
  @JsonKey(ignore: true)
  _$$_DriverPassportCopyWith<_$_DriverPassport> get copyWith =>
      throw _privateConstructorUsedError;
}

VehicleNumber _$VehicleNumberFromJson(Map<String, dynamic> json) {
  return _VehicleNumber.fromJson(json);
}

/// @nodoc
mixin _$VehicleNumber {
  String? get plateNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleNumberCopyWith<VehicleNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleNumberCopyWith<$Res> {
  factory $VehicleNumberCopyWith(
          VehicleNumber value, $Res Function(VehicleNumber) then) =
      _$VehicleNumberCopyWithImpl<$Res, VehicleNumber>;
  @useResult
  $Res call({String? plateNumber});
}

/// @nodoc
class _$VehicleNumberCopyWithImpl<$Res, $Val extends VehicleNumber>
    implements $VehicleNumberCopyWith<$Res> {
  _$VehicleNumberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plateNumber = freezed,
  }) {
    return _then(_value.copyWith(
      plateNumber: freezed == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VehicleNumberCopyWith<$Res>
    implements $VehicleNumberCopyWith<$Res> {
  factory _$$_VehicleNumberCopyWith(
          _$_VehicleNumber value, $Res Function(_$_VehicleNumber) then) =
      __$$_VehicleNumberCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? plateNumber});
}

/// @nodoc
class __$$_VehicleNumberCopyWithImpl<$Res>
    extends _$VehicleNumberCopyWithImpl<$Res, _$_VehicleNumber>
    implements _$$_VehicleNumberCopyWith<$Res> {
  __$$_VehicleNumberCopyWithImpl(
      _$_VehicleNumber _value, $Res Function(_$_VehicleNumber) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plateNumber = freezed,
  }) {
    return _then(_$_VehicleNumber(
      plateNumber: freezed == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleNumber implements _VehicleNumber {
  const _$_VehicleNumber({this.plateNumber});

  factory _$_VehicleNumber.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleNumberFromJson(json);

  @override
  final String? plateNumber;

  @override
  String toString() {
    return 'VehicleNumber(plateNumber: $plateNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleNumber &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plateNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleNumberCopyWith<_$_VehicleNumber> get copyWith =>
      __$$_VehicleNumberCopyWithImpl<_$_VehicleNumber>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleNumberToJson(
      this,
    );
  }
}

abstract class _VehicleNumber implements VehicleNumber {
  const factory _VehicleNumber({final String? plateNumber}) = _$_VehicleNumber;

  factory _VehicleNumber.fromJson(Map<String, dynamic> json) =
      _$_VehicleNumber.fromJson;

  @override
  String? get plateNumber;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleNumberCopyWith<_$_VehicleNumber> get copyWith =>
      throw _privateConstructorUsedError;
}
