import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_response.freezed.dart';

part 'verify_response.g.dart';

@freezed
class VerifyResponse with _$VerifyResponse {
  const factory VerifyResponse(
      {@JsonKey(name: 'accessToken') String? accessToken,
      @JsonKey(name: 'refreshToken') String? refreshToken}) = _VerifyResponse;

  factory VerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyResponseFromJson(json);
}
