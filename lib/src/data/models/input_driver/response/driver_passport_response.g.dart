// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_passport_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverPassportInputResponse _$$_DriverPassportInputResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DriverPassportInputResponse(
      fullName: json['fullName'] as String?,
      driverLicense: json['driverLicense'] == null
          ? null
          : DriverLicense.fromJson(
              json['driverLicense'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DriverPassportInputResponseToJson(
        _$_DriverPassportInputResponse instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'driverLicense': instance.driverLicense,
    };

_$_DriverLicense _$$_DriverLicenseFromJson(Map<String, dynamic> json) =>
    _$_DriverLicense(
      series: json['series'] as String?,
      number: json['number'] as String?,
      startDate: json['startDate'] as String?,
    );

Map<String, dynamic> _$$_DriverLicenseToJson(_$_DriverLicense instance) =>
    <String, dynamic>{
      'series': instance.series,
      'number': instance.number,
      'startDate': instance.startDate,
    };
