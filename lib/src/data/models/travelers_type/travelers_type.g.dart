// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travelers_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TravelersType _$$_TravelersTypeFromJson(Map<String, dynamic> json) =>
    _$_TravelersType(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => TravelTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TravelersTypeToJson(_$_TravelersType instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$_TravelTypeModel _$$_TravelTypeModelFromJson(Map<String, dynamic> json) =>
    _$_TravelTypeModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_TravelTypeModelToJson(_$_TravelTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
