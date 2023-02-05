part of 'change_phone_verify_cubit.dart';

@freezed
class ChangePhoneVerifyState with _$ChangePhoneVerifyState {
  const factory ChangePhoneVerifyState.initial() = Initial;
  const factory ChangePhoneVerifyState.error(Failure failure) = Error;
  const factory ChangePhoneVerifyState.success() = Success;
  const factory ChangePhoneVerifyState.loading() = Loading;
}
