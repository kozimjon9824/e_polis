// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SelectValues _$$_SelectValuesFromJson(Map<String, dynamic> json) =>
    _$_SelectValues(
      regions: (json['regions'] as List<dynamic>?)
          ?.map((e) => KeyValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      vehicleTypes: (json['vehicleTypes'] as List<dynamic>?)
          ?.map((e) => KeyValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      relative: (json['relative'] as List<dynamic>?)
          ?.map((e) => KeyValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SelectValuesToJson(_$_SelectValues instance) =>
    <String, dynamic>{
      'regions': instance.regions,
      'vehicleTypes': instance.vehicleTypes,
      'relative': instance.relative,
    };

_$_KeyValue _$$_KeyValueFromJson(Map<String, dynamic> json) => _$_KeyValue(
      key: json['key'] as int?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_KeyValueToJson(_$_KeyValue instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
