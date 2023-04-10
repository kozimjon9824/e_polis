part of 'add_driver_cubit.dart';

@freezed
class AddDriverState with _$AddDriverState {
  const factory AddDriverState({
    @Default(StateStatus.unknown) StateStatus status,
    @Default(UnknownFailure()) Failure failure,
    DriverPassportInputResponse? driverData,
    @Default(false) bool fillByHand,
  }) = _AddDriverState;
}
