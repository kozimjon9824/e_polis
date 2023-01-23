// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_passport_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverPassportInputRequest _$$_DriverPassportInputRequestFromJson(
        Map<String, dynamic> json) =>
    _$_DriverPassportInputRequest(
      birthdate: json['birthdate'] as String?,
      passport: json['passport'] == null
          ? null
          : PassportInputFields.fromJson(
              json['passport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DriverPassportInputRequestToJson(
        _$_DriverPassportInputRequest instance) =>
    <String, dynamic>{
      'birthdate': instance.birthdate,
      'passport': instance.passport,
    };

_$_PassportInputFields _$$_PassportInputFieldsFromJson(
        Map<String, dynamic> json) =>
    _$_PassportInputFields(
      series: json['series'] as String?,
      number: json['number'] as String?,
    );

Map<String, dynamic> _$$_PassportInputFieldsToJson(
        _$_PassportInputFields instance) =>
    <String, dynamic>{
      'series': instance.series,
      'number': instance.number,
    };
