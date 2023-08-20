// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PassportDataRequest _$$_PassportDataRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PassportDataRequest(
      birthDate: json['birthDate'] as String?,
      passportSeries: json['passportSeries'] as String?,
      passportNumber: json['passportNumber'] as String?,
      isConsent: json['isConsent'] as String?,
    );

Map<String, dynamic> _$$_PassportDataRequestToJson(
        _$_PassportDataRequest instance) =>
    <String, dynamic>{
      'birthDate': instance.birthDate,
      'passportSeries': instance.passportSeries,
      'passportNumber': instance.passportNumber,
      'isConsent': instance.isConsent,
    };
