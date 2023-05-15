import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_data.freezed.dart';

part 'product_data.g.dart';

@freezed
class MyProductData with _$MyProductData {
  const factory MyProductData({
    List<ProductModel>? data,
  }) = _MyProductData;

  factory MyProductData.fromJson(Map<String, dynamic> json) =>
      _$MyProductDataFromJson(json);
}

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    String? id,
    String? logo,
    String? name,
    String? number,
    String? startAt,
    String? expireAt,
    int? expirePercent,
    List<ClickAction>? menuItems,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class ClickAction with _$ClickAction {
  const factory ClickAction({
    String? title,
    String? type,
    String? value,
  }) = _ClickAction;

  factory ClickAction.fromJson(Map<String, dynamic> json) =>
      _$ClickActionFromJson(json);
}
