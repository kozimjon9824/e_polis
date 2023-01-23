import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_passport_validation.freezed.dart';

part 'driver_passport_validation.g.dart';

@freezed
class DriverPassportValidation with _$DriverPassportValidation {
  const factory DriverPassportValidation(
      {String? pinfl, PassportData? passport}) = _DriverPassportValidation;

  factory DriverPassportValidation.fromJson(Map<String, dynamic> json) =>
      _$DriverPassportValidationFromJson(json);
}

@freezed
class PassportData with _$PassportData {
  const factory PassportData({String? series, String? number}) = _PassportData;

  factory PassportData.fromJson(Map<String, dynamic> json) =>
      _$PassportDataFromJson(json);
}
