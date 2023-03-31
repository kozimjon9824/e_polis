import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main.freezed.dart';

part 'main.g.dart';

@freezed
class MainScreenData with _$MainScreenData {
  const factory MainScreenData({
    UserData? user,
    bool? hasNotification,
    List<BannerResponse>? banners,
    List<ProductData>? products,
  }) = _MainScreenData;

  factory MainScreenData.fromJson(Map<String, dynamic> json) =>
      _$MainScreenDataFromJson(json);
}

@freezed
class BannerResponse with _$BannerResponse {
  const factory BannerResponse({
    String? photo,
    String? action,
    String? value,
    MetaData? meta,
  }) = _BannerResponse;

  factory BannerResponse.fromJson(Map<String, dynamic> json) =>
      _$BannerResponseFromJson(json);
}

@freezed
class MetaData with _$MetaData {
  const factory MetaData({
    String? id,
  }) = _MetaData;

  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    String? fullName,
    String? phone,
    String? photo,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class ProductData with _$ProductData {
  const factory ProductData({
    String? id,
    String? photo,
    String? name,
    Category? category,
    String? description,
  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    String? name,
    String? type,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
