import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_update.freezed.dart';
part 'profile_update.g.dart';

@freezed
class ProfileUpdateRequest with _$ProfileUpdateRequest {
  const factory ProfileUpdateRequest({String? firstName, String? lastName}) =
      _ProfileUpdateRequest;

  factory ProfileUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateRequestFromJson(json);
}
