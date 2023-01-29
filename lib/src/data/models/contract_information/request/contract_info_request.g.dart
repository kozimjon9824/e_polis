// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContractInfoRequest _$$_ContractInfoRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ContractInfoRequest(
      region: json['region'] as int?,
      vehicleType: json['vehicleType'] as int?,
      period: json['period'] as String?,
      startDate: json['startDate'] as String?,
      isVip: json['isVip'] as bool?,
    );

Map<String, dynamic> _$$_ContractInfoRequestToJson(
        _$_ContractInfoRequest instance) =>
    <String, dynamic>{
      'region': instance.region,
      'vehicleType': instance.vehicleType,
      'period': instance.period,
      'startDate': instance.startDate,
      'isVip': instance.isVip,
    };
