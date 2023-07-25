// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Countries _$$_CountriesFromJson(Map<String, dynamic> json) => _$_Countries(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CountryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CountriesToJson(_$_Countries instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$_CountryModel _$$_CountryModelFromJson(Map<String, dynamic> json) =>
    _$_CountryModel(
      id: json['id'] as int?,
      name1: json['name1'] as String?,
      name2: json['name2'] as String?,
      name3: json['name3'] as String?,
      ename: json['ename'] as String?,
      kod: json['kod'] as String?,
      active: json['active'] as int?,
      fondId: json['fond_id'] as int?,
    );

Map<String, dynamic> _$$_CountryModelToJson(_$_CountryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name1': instance.name1,
      'name2': instance.name2,
      'name3': instance.name3,
      'ename': instance.ename,
      'kod': instance.kod,
      'active': instance.active,
      'fond_id': instance.fondId,
    };
