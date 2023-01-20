import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';

part 'login.g.dart';

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({String? phone}) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}
