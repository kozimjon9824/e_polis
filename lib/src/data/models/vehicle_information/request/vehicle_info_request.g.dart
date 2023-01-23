// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleInfoRequest _$$_VehicleInfoRequestFromJson(
        Map<String, dynamic> json) =>
    _$_VehicleInfoRequest(
      plateNumber: json['plateNumber'] as String?,
      technicalPassport: json['technicalPassport'] == null
          ? null
          : TechnicalPassport.fromJson(
              json['technicalPassport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VehicleInfoRequestToJson(
        _$_VehicleInfoRequest instance) =>
    <String, dynamic>{
      'plateNumber': instance.plateNumber,
      'technicalPassport': instance.technicalPassport,
    };

_$_TechnicalPassport _$$_TechnicalPassportFromJson(Map<String, dynamic> json) =>
    _$_TechnicalPassport(
      series: json['series'] as String?,
      number: json['number'] as String?,
    );

Map<String, dynamic> _$$_TechnicalPassportToJson(
        _$_TechnicalPassport instance) =>
    <String, dynamic>{
      'series': instance.series,
      'number': instance.number,
    };
