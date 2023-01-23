import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_passport_response.freezed.dart';

part 'driver_passport_response.g.dart';

@freezed
class DriverPassportInputResponse with _$DriverPassportInputResponse {
  const factory DriverPassportInputResponse(
      {String? fullName,
      DriverLicense? driverLicense}) = _DriverPassportInputResponse;

  factory DriverPassportInputResponse.fromJson(Map<String, dynamic> json) =>
      _$DriverPassportInputResponseFromJson(json);
}

@freezed
class DriverLicense with _$DriverLicense {
  const factory DriverLicense(
      {String? series, String? number, String? startDate}) = _DriverLicense;

  factory DriverLicense.fromJson(Map<String, dynamic> json) =>
      _$DriverLicenseFromJson(json);
}
