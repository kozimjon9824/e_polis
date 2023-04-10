part of 'check_vehicle_info_cubit.dart';

@freezed
class CheckVehicleInfoState with _$CheckVehicleInfoState {
  const factory CheckVehicleInfoState({
    VehicleInfoResponse? vehicleInfo,
    @Default(StateStatus.unknown) StateStatus status,
    @Default(UnknownFailure()) Failure failure,
    @Default(false) bool isPassportValidated,
  }) = _CheckVehicleInfoState;
}
