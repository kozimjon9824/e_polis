// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'programms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Programs _$$_ProgramsFromJson(Map<String, dynamic> json) => _$_Programs(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ProgramModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProgramsToJson(_$_Programs instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$_ProgramModel _$$_ProgramModelFromJson(Map<String, dynamic> json) =>
    _$_ProgramModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      liability: json['liability'] as int?,
      active: json['active'] as int?,
    );

Map<String, dynamic> _$$_ProgramModelToJson(_$_ProgramModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'liability': instance.liability,
      'active': instance.active,
    };
