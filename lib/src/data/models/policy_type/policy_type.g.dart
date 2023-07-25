// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PolicyType _$$_PolicyTypeFromJson(Map<String, dynamic> json) =>
    _$_PolicyType(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => PolicyTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PolicyTypeToJson(_$_PolicyType instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$_PolicyTypeModel _$$_PolicyTypeModelFromJson(Map<String, dynamic> json) =>
    _$_PolicyTypeModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_PolicyTypeModelToJson(_$_PolicyTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
