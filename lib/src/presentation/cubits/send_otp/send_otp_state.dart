part of 'send_otp_cubit.dart';

@freezed
class SendOtpState with _$SendOtpState {
  const factory SendOtpState({
    @Default(StateStatus.unknown) StateStatus status,
    @Default(UnknownFailure()) Failure failure,
  }) = _SendOtpState;
}
