// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookModel _$$_BookModelFromJson(Map<String, dynamic> json) => _$_BookModel(
      paymentProvider: json['paymentProvider'] as String?,
      applicant: json['applicant'] == null
          ? null
          : ApplicantModel.fromJson(json['applicant'] as Map<String, dynamic>),
      calculation: json['calculation'] == null
          ? null
          : CalculationModel.fromJson(
              json['calculation'] as Map<String, dynamic>),
      startDate: json['startDate'] as String?,
      vehicle: json['vehicle'] == null
          ? null
          : VehicleNumber.fromJson(json['vehicle'] as Map<String, dynamic>),
      drivers: (json['drivers'] as List<dynamic>?)
          ?.map((e) => DriverModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookModelToJson(_$_BookModel instance) =>
    <String, dynamic>{
      'paymentProvider': instance.paymentProvider,
      'applicant': instance.applicant,
      'calculation': instance.calculation,
      'startDate': instance.startDate,
      'vehicle': instance.vehicle,
      'drivers': instance.drivers,
    };

_$_ApplicantPassport _$$_ApplicantPassportFromJson(Map<String, dynamic> json) =>
    _$_ApplicantPassport(
      series: json['series'] as String?,
      number: json['number'] as String?,
      pinfl: json['pinfl'] as String?,
    );

Map<String, dynamic> _$$_ApplicantPassportToJson(
        _$_ApplicantPassport instance) =>
    <String, dynamic>{
      'series': instance.series,
      'number': instance.number,
      'pinfl': instance.pinfl,
    };

_$_ApplicantModel _$$_ApplicantModelFromJson(Map<String, dynamic> json) =>
    _$_ApplicantModel(
      passport: json['passport'] == null
          ? null
          : ApplicantPassport.fromJson(
              json['passport'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_ApplicantModelToJson(_$_ApplicantModel instance) =>
    <String, dynamic>{
      'passport': instance.passport,
      'phone': instance.phone,
    };

_$_CalculationModel _$$_CalculationModelFromJson(Map<String, dynamic> json) =>
    _$_CalculationModel(
      region: json['region'] as int?,
      vehicleType: json['vehicleType'] as int?,
      isVip: json['isVip'] as bool?,
      period: json['period'] as String?,
    );

Map<String, dynamic> _$$_CalculationModelToJson(_$_CalculationModel instance) =>
    <String, dynamic>{
      'region': instance.region,
      'vehicleType': instance.vehicleType,
      'isVip': instance.isVip,
      'period': instance.period,
    };

_$_DriverModel _$$_DriverModelFromJson(Map<String, dynamic> json) =>
    _$_DriverModel(
      birthDate: json['birthDate'] as String?,
      relative: json['relative'] as int? ?? 0,
      passport: json['passport'] == null
          ? null
          : DriverPassport.fromJson(json['passport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DriverModelToJson(_$_DriverModel instance) =>
    <String, dynamic>{
      'birthDate': instance.birthDate,
      'relative': instance.relative,
      'passport': instance.passport,
    };

_$_DriverPassport _$$_DriverPassportFromJson(Map<String, dynamic> json) =>
    _$_DriverPassport(
      series: json['series'] as String?,
      number: json['number'] as String?,
    );

Map<String, dynamic> _$$_DriverPassportToJson(_$_DriverPassport instance) =>
    <String, dynamic>{
      'series': instance.series,
      'number': instance.number,
    };

_$_VehicleNumber _$$_VehicleNumberFromJson(Map<String, dynamic> json) =>
    _$_VehicleNumber(
      plateNumber: json['plateNumber'] as String?,
      technicalPassport: json['technicalPassport'] == null
          ? null
          : DriverPassport.fromJson(
              json['technicalPassport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VehicleNumberToJson(_$_VehicleNumber instance) =>
    <String, dynamic>{
      'plateNumber': instance.plateNumber,
      'technicalPassport': instance.technicalPassport,
    };
