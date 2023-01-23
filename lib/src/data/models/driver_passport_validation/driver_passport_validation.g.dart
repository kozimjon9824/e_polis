// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_passport_validation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverPassportValidation _$$_DriverPassportValidationFromJson(
        Map<String, dynamic> json) =>
    _$_DriverPassportValidation(
      pinfl: json['pinfl'] as String?,
      passport: json['passport'] == null
          ? null
          : PassportData.fromJson(json['passport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DriverPassportValidationToJson(
        _$_DriverPassportValidation instance) =>
    <String, dynamic>{
      'pinfl': instance.pinfl,
      'passport': instance.passport,
    };

_$_PassportData _$$_PassportDataFromJson(Map<String, dynamic> json) =>
    _$_PassportData(
      series: json['series'] as String?,
      number: json['number'] as String?,
    );

Map<String, dynamic> _$$_PassportDataToJson(_$_PassportData instance) =>
    <String, dynamic>{
      'series': instance.series,
      'number': instance.number,
    };
