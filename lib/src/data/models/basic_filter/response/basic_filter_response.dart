import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_filter_response.freezed.dart';
part 'basic_filter_response.g.dart';

@freezed
class BasicFilterResponse with _$BasicFilterResponse {
  const factory BasicFilterResponse({List<BasicFilterData>? data}) =
      _BasicFilterResponse;

  factory BasicFilterResponse.fromJson(Map<String, dynamic> json) =>
      _$BasicFilterResponseFromJson(json);
}

@freezed
class BasicFilterData with _$BasicFilterData {
  const factory BasicFilterData({
    String? id,
    String? logo,
    double? insuranceAmount,
    double? policyAmount,
    double? lifeDamage,
    double? propertyDamage,
  }) = _BasicFilterData;

  factory BasicFilterData.fromJson(Map<String, dynamic> json) =>
      _$BasicFilterDataFromJson(json);
}
