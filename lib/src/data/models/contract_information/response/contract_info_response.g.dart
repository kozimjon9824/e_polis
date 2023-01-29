// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContractInfoResponse _$$_ContractInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ContractInfoResponse(
      insuranceAmount: (json['insuranceAmount'] as num?)?.toDouble(),
      policyAmount: (json['policyAmount'] as num?)?.toDouble(),
      lifeDamage: (json['lifeDamage'] as num?)?.toDouble(),
      propertyDamage: (json['propertyDamage'] as num?)?.toDouble(),
      endDate: json['endDate'] as String?,
    );

Map<String, dynamic> _$$_ContractInfoResponseToJson(
        _$_ContractInfoResponse instance) =>
    <String, dynamic>{
      'insuranceAmount': instance.insuranceAmount,
      'policyAmount': instance.policyAmount,
      'lifeDamage': instance.lifeDamage,
      'propertyDamage': instance.propertyDamage,
      'endDate': instance.endDate,
    };
