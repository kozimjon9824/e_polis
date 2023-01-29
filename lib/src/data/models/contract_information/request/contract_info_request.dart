import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_info_request.freezed.dart';
part 'contract_info_request.g.dart';

@freezed
class ContractInfoRequest with _$ContractInfoRequest {
  const factory ContractInfoRequest(
      {int? region,
      int? vehicleType,
      String? period,
      String? startDate,
      bool? isVip}) = _ContractInfoRequest;

  factory ContractInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$ContractInfoRequestFromJson(json);
}
