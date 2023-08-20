import 'package:freezed_annotation/freezed_annotation.dart';

part 'passport_data_response.freezed.dart';

part 'passport_data_response.g.dart';

@freezed
class PassportDataResponse with _$PassportDataResponse {
  const factory PassportDataResponse({
    String? fullName,
    String? firstName,
    String? lastName,
    String? middleName,
    String? pinfl,
  }) = _PassportDataResponse;

  factory PassportDataResponse.fromJson(Map<String, dynamic> json) =>
      _$PassportDataResponseFromJson(json);
}
