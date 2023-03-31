// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainScreenData _$$_MainScreenDataFromJson(Map<String, dynamic> json) =>
    _$_MainScreenData(
      user: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
      hasNotification: json['hasNotification'] as bool?,
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => BannerResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MainScreenDataToJson(_$_MainScreenData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'hasNotification': instance.hasNotification,
      'banners': instance.banners,
      'products': instance.products,
    };

_$_BannerResponse _$$_BannerResponseFromJson(Map<String, dynamic> json) =>
    _$_BannerResponse(
      photo: json['photo'] as String?,
      action: json['action'] as String?,
      value: json['value'] as String?,
      meta: json['meta'] == null
          ? null
          : MetaData.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BannerResponseToJson(_$_BannerResponse instance) =>
    <String, dynamic>{
      'photo': instance.photo,
      'action': instance.action,
      'value': instance.value,
      'meta': instance.meta,
    };

_$_MetaData _$$_MetaDataFromJson(Map<String, dynamic> json) => _$_MetaData(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_MetaDataToJson(_$_MetaData instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'phone': instance.phone,
      'photo': instance.photo,
    };

_$_ProductData _$$_ProductDataFromJson(Map<String, dynamic> json) =>
    _$_ProductData(
      id: json['id'] as String?,
      photo: json['photo'] as String?,
      name: json['name'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_ProductDataToJson(_$_ProductData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'name': instance.name,
      'category': instance.category,
      'description': instance.description,
    };

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      name: json['name'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
    };
