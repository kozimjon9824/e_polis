// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyProductData _$$_MyProductDataFromJson(Map<String, dynamic> json) =>
    _$_MyProductData(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MyProductDataToJson(_$_MyProductData instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as String?,
      logo: json['logo'] as String?,
      name: json['name'] as String?,
      number: json['number'] as String?,
      startAt: json['startAt'] as String?,
      expireAt: json['expireAt'] as String?,
      expirePercent: json['expirePercent'] as int?,
      menuItems: (json['menuItems'] as List<dynamic>?)
          ?.map((e) => ClickAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo': instance.logo,
      'name': instance.name,
      'number': instance.number,
      'startAt': instance.startAt,
      'expireAt': instance.expireAt,
      'expirePercent': instance.expirePercent,
      'menuItems': instance.menuItems,
    };

_$_ClickAction _$$_ClickActionFromJson(Map<String, dynamic> json) =>
    _$_ClickAction(
      title: json['title'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_ClickActionToJson(_$_ClickAction instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'value': instance.value,
    };
