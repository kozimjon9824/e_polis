import 'package:freezed_annotation/freezed_annotation.dart';
part 'passport_data_request.freezed.dart';
part 'passport_data_request.g.dart';


@freezed
class PassportDataRequest with _$PassportDataRequest {
  const factory PassportDataRequest({
    String? birthDate,
    String? passportSeries,
    String? passportNumber,
    String? isConsent,
  }) = _PassportDataRequest;

  factory PassportDataRequest.fromJson(Map<String, dynamic> json) => _$PassportDataRequestFromJson(json);
}
