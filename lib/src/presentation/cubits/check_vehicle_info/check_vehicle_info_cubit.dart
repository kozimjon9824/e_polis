import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/data/models/driver_passport_validation/driver_passport_validation.dart';
import 'package:e_polis/src/data/models/vehicle_information/request/vehicle_info_request.dart';
import 'package:e_polis/src/domain/usecases/main/check_vehicle_info.dart';
import 'package:e_polis/src/domain/usecases/main/validate_passport.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/vehicle_information/response/vehicle_info_response.dart';

part 'check_vehicle_info_state.dart';

part 'check_vehicle_info_cubit.freezed.dart';

class CheckVehicleInfoCubit extends Cubit<CheckVehicleInfoState> {
  CheckVehicleInfoCubit(this._vehicleInfoUseCase, this._validatePassportUseCase)
      : super(const CheckVehicleInfoState());
  final CheckVehicleInfoUseCase _vehicleInfoUseCase;
  final ValidatePassportUseCase _validatePassportUseCase;

  void checkVehicleData(
      {required String vehicleNum,
      required String techPasSer,
      required String techPasNum}) async {
    emit(state.copyWith(status: StateStatus.loading));
    var result = await _vehicleInfoUseCase.call(CheckVehicleInfoParam(
        VehicleInfoRequest(
            plateNumber: vehicleNum,
            technicalPassport:
                TechnicalPassport(series: techPasSer, number: techPasNum))));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: StateStatus.error)),
        (response) => emit(state.copyWith(
            status: StateStatus.unknown, vehicleInfo: response)));
  }

  void validatePassport(
      {required String series, required String number}) async {
    emit(state.copyWith(status: StateStatus.loading));
    var result = await _validatePassportUseCase.call(ValidatePassportParams(
        DriverPassportValidation(
            pinfl: state.vehicleInfo?.owner?.pinfl ?? '',
            passport: PassportData(series: series, number: number))));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: StateStatus.error)),
        (response) => emit(state.copyWith(
            status: StateStatus.unknown, isPassportValidated: true)));
  }

  void onClearVehicleData() {
    emit(state.copyWith(vehicleInfo: null, status: StateStatus.unknown));
  }
}
