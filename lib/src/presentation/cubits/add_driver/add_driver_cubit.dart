import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/data/models/input_driver/request/driver_passport_input.dart';
import 'package:e_polis/src/domain/usecases/main/add_driver.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/input_driver/response/driver_passport_response.dart';

part 'add_driver_state.dart';

part 'add_driver_cubit.freezed.dart';

class AddDriverCubit extends Cubit<AddDriverState> {
  AddDriverCubit(this._addDriverUseCase) : super(const AddDriverState());
  final AddDriverUseCase _addDriverUseCase;

  void addDriver({
    required String birth,
    required String series,
    required String number,
  }) async {
    emit(state.copyWith(status: StateStatus.loading));
    var result = await _addDriverUseCase.call(AddDriverParams(
        DriverPassportInputRequest(
            birthdate: birth,
            passport: PassportInputFields(series: series, number: number))));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: StateStatus.error)),
        (response) => emit(
            state.copyWith(status: StateStatus.success, driverData: response)));
  }

  void clearDriverData() {
    emit(state.copyWith(status: StateStatus.unknown, driverData: null));
  }
}
