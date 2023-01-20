part of 'verify_cubit.dart';

@freezed
class VerifyState with _$VerifyState {
  const factory VerifyState.initial() = Initial;
  const factory VerifyState.error(Failure failure) = Error;
  const factory VerifyState.success() = Success;
  const factory VerifyState.loading() = Loading;
}
