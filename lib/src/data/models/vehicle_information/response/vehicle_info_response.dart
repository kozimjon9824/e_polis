import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_info_response.freezed.dart';

part 'vehicle_info_response.g.dart';

@freezed
class VehicleInfoResponse with _$VehicleInfoResponse {
  const factory VehicleInfoResponse({
    bool? isPassportOK,
    int? region,
    VehicleData? vehicle,
    OwnerData? owner,
  }) = _VehicleInfoResponse;

  factory VehicleInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$VehicleInfoResponseFromJson(json);
}

@freezed
class VehicleData with _$VehicleData {
  const factory VehicleData({
    String? model,
    String? address,
    int? issueYear,
    dynamic type,
  }) = _VehicleData;

  factory VehicleData.fromJson(Map<String, dynamic> json) =>
      _$VehicleDataFromJson(json);
}

@freezed
class OwnerData with _$OwnerData {
  const factory OwnerData({
    String? fullName,
    String? pinfl,
  }) = _OwnerData;

  factory OwnerData.fromJson(Map<String, dynamic> json) =>
      _$OwnerDataFromJson(json);
}
