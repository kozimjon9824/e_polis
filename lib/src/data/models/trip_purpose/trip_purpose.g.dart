// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_purpose.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripPurpose _$$_TripPurposeFromJson(Map<String, dynamic> json) =>
    _$_TripPurpose(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => TripModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TripPurposeToJson(_$_TripPurpose instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$_TripModel _$$_TripModelFromJson(Map<String, dynamic> json) => _$_TripModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_TripModelToJson(_$_TripModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
