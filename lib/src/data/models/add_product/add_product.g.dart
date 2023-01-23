// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddProductRequest _$$_AddProductRequestFromJson(Map<String, dynamic> json) =>
    _$_AddProductRequest(
      vehicleNumber: json['vehicleNumber'] as String?,
      policy: json['policy'] == null
          ? null
          : PolicyFields.fromJson(json['policy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddProductRequestToJson(
        _$_AddProductRequest instance) =>
    <String, dynamic>{
      'vehicleNumber': instance.vehicleNumber,
      'policy': instance.policy,
    };

_$_PolicyFields _$$_PolicyFieldsFromJson(Map<String, dynamic> json) =>
    _$_PolicyFields(
      series: json['series'] as String?,
      number: json['number'] as String?,
    );

Map<String, dynamic> _$$_PolicyFieldsToJson(_$_PolicyFields instance) =>
    <String, dynamic>{
      'series': instance.series,
      'number': instance.number,
    };
