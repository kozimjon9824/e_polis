// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_filter_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasicFilterRequest _$$_BasicFilterRequestFromJson(
        Map<String, dynamic> json) =>
    _$_BasicFilterRequest(
      region: json['region'] as int?,
      vehicleType: json['vehicleType'] as int?,
      isVip: json['isVip'] as bool?,
      period: json['period'] as String?,
    );

Map<String, dynamic> _$$_BasicFilterRequestToJson(
        _$_BasicFilterRequest instance) =>
    <String, dynamic>{
      'region': instance.region,
      'vehicleType': instance.vehicleType,
      'isVip': instance.isVip,
      'period': instance.period,
    };
