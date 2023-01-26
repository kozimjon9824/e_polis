import 'package:freezed_annotation/freezed_annotation.dart';

part 'insurance_details.freezed.dart';

part 'insurance_details.g.dart';

@freezed
class InsuranceDetails with _$InsuranceDetails {
  const factory InsuranceDetails(
      {String? id,
      String? name,
      String? logo,
      String? description,
      double? insuranceAmount,
      double? policyAmount,
      double? lifeDamage,
      double? propertyDamage}) = _InsuranceDetails;

  factory InsuranceDetails.fromJson(Map<String, dynamic> json) =>
      _$InsuranceDetailsFromJson(json);
}
