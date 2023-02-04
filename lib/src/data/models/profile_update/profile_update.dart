import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_update.freezed.dart';

part 'profile_update.g.dart';

@freezed
class ProfileUpdateRequest with _$ProfileUpdateRequest {
  const factory ProfileUpdateRequest(
      {String? firstName,
      String? lastName,
      @JsonKey(includeIfNull: false) String? photo,
      @JsonKey(includeIfNull: false) String? phone,
      String? otpCode}) = _ProfileUpdateRequest;

  factory ProfileUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateRequestFromJson(json);
}
