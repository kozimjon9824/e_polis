import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_passport_input.freezed.dart';

part 'driver_passport_input.g.dart';

@freezed
class DriverPassportInputRequest with _$DriverPassportInputRequest {
  const factory DriverPassportInputRequest(
      {String? birthdate,
      PassportInputFields? passport}) = _DriverPassportInputRequest;

  factory DriverPassportInputRequest.fromJson(Map<String, dynamic> json) =>
      _$DriverPassportInputRequestFromJson(json);
}

@freezed
class PassportInputFields with _$PassportInputFields {
  const factory PassportInputFields({String? series, String? number}) =
      _PassportInputFields;

  factory PassportInputFields.fromJson(Map<String, dynamic> json) =>
      _$PassportInputFieldsFromJson(json);
}
