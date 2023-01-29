import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_info_response.freezed.dart';

part 'contract_info_response.g.dart';

@freezed
class ContractInfoResponse with _$ContractInfoResponse {
  const factory ContractInfoResponse(
      {double? insuranceAmount,
      double? policyAmount,
      double? lifeDamage,
      double? propertyDamage,
      String? endDate}) = _ContractInfoResponse;

  factory ContractInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ContractInfoResponseFromJson(json);
}
