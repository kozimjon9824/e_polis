import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_account_response.freezed.dart';

part 'delete_account_response.g.dart';

@freezed
class DeleteAccountResponse with _$DeleteAccountResponse {
  const factory DeleteAccountResponse({
    String? state,
  }) = _DeleteAccountResponse;

  factory DeleteAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteAccountResponseFromJson(json);
}
