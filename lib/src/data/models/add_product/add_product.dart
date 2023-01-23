import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_product.freezed.dart';

part 'add_product.g.dart';

@freezed
class AddProductRequest with _$AddProductRequest {
  const factory AddProductRequest(
      {String? vehicleNumber, PolicyFields? policy}) = _AddProductRequest;

  factory AddProductRequest.fromJson(Map<String, dynamic> json) =>
      _$AddProductRequestFromJson(json);
}

@freezed
class PolicyFields with _$PolicyFields {
  const factory PolicyFields({String? series, String? number}) = _PolicyFields;

  factory PolicyFields.fromJson(Map<String, dynamic> json) =>
      _$PolicyFieldsFromJson(json);
}
