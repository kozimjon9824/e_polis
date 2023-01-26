// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_filter_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasicFilterResponse _$$_BasicFilterResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BasicFilterResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BasicFilterData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BasicFilterResponseToJson(
        _$_BasicFilterResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_BasicFilterData _$$_BasicFilterDataFromJson(Map<String, dynamic> json) =>
    _$_BasicFilterData(
      id: json['id'] as String?,
      logo: json['logo'] as String?,
      insuranceAmount: (json['insuranceAmount'] as num?)?.toDouble(),
      policyAmount: (json['policyAmount'] as num?)?.toDouble(),
      lifeDamage: (json['lifeDamage'] as num?)?.toDouble(),
      propertyDamage: (json['propertyDamage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_BasicFilterDataToJson(_$_BasicFilterData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo': instance.logo,
      'insuranceAmount': instance.insuranceAmount,
      'policyAmount': instance.policyAmount,
      'lifeDamage': instance.lifeDamage,
      'propertyDamage': instance.propertyDamage,
    };
