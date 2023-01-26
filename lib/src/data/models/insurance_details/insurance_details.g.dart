// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurance_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InsuranceDetails _$$_InsuranceDetailsFromJson(Map<String, dynamic> json) =>
    _$_InsuranceDetails(
      id: json['id'] as String?,
      name: json['name'] as String?,
      logo: json['logo'] as String?,
      description: json['description'] as String?,
      insuranceAmount: (json['insuranceAmount'] as num?)?.toDouble(),
      policyAmount: (json['policyAmount'] as num?)?.toDouble(),
      lifeDamage: (json['lifeDamage'] as num?)?.toDouble(),
      propertyDamage: (json['propertyDamage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_InsuranceDetailsToJson(_$_InsuranceDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'description': instance.description,
      'insuranceAmount': instance.insuranceAmount,
      'policyAmount': instance.policyAmount,
      'lifeDamage': instance.lifeDamage,
      'propertyDamage': instance.propertyDamage,
    };
