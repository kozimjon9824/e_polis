import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_product.freezed.dart';

part 'user_product.g.dart';

@freezed
class UserProduct with _$UserProduct {
  const factory UserProduct({
    List<UserProductData>? details,
    String? downloadUrl,
    bool? removable,
  }) = _UserProduct;

  factory UserProduct.fromJson(Map<String, dynamic> json) =>
      _$UserProductFromJson(json);
}

@freezed
class UserProductData with _$UserProductData {
  const factory UserProductData({
    String? key,
    String? value,
    String? type,
  }) = _UserProductData;

  factory UserProductData.fromJson(Map<String, dynamic> json) =>
      _$UserProductDataFromJson(json);
}
