// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_days.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MultiDays _$$_MultiDaysFromJson(Map<String, dynamic> json) => _$_MultiDays(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => MultiDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MultiDaysToJson(_$_MultiDays instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$_MultiDayModel _$$_MultiDayModelFromJson(Map<String, dynamic> json) =>
    _$_MultiDayModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      day: json['day'] as int?,
    );

Map<String, dynamic> _$$_MultiDayModelToJson(_$_MultiDayModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'day': instance.day,
    };
