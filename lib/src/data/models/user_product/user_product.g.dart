// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProduct _$$_UserProductFromJson(Map<String, dynamic> json) =>
    _$_UserProduct(
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => UserProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
      downloadUrl: json['downloadUrl'] as String?,
      removable: json['removable'] as bool?,
    );

Map<String, dynamic> _$$_UserProductToJson(_$_UserProduct instance) =>
    <String, dynamic>{
      'details': instance.details,
      'downloadUrl': instance.downloadUrl,
      'removable': instance.removable,
    };

_$_UserProductData _$$_UserProductDataFromJson(Map<String, dynamic> json) =>
    _$_UserProductData(
      key: json['key'] as String?,
      value: json['value'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_UserProductDataToJson(_$_UserProductData instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'type': instance.type,
    };
