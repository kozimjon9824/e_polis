part of 'confirm_account_delete_cubit.dart';

@freezed
class ConfirmAccountDeleteState with _$ConfirmAccountDeleteState {
  const factory ConfirmAccountDeleteState({
    @Default(StateStatus.unknown) StateStatus status,
    @Default(UnknownFailure()) Failure failure,
    DeleteAccountResponse? deleteAccountResponse,
  }) = _ConfirmAccountDeleteState;
}
