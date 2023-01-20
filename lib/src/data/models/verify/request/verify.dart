import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify.freezed.dart';

part 'verify.g.dart';

@freezed
class VerifyRequest with _$VerifyRequest {
  const factory VerifyRequest({String? phone, String? otp}) = _VerifyRequest;

  factory VerifyRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyRequestFromJson(json);
}
