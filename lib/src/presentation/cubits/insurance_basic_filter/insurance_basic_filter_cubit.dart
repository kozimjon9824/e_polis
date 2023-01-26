import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/basic_filter/request/basic_filter_request.dart';
import '../../../data/models/basic_filter/response/basic_filter_response.dart';
import '../../../domain/usecases/main/get_insurances.dart';

part 'insurance_basic_filter_state.dart';

part 'insurance_basic_filter_cubit.freezed.dart';

class InsuranceBasicFilterCubit extends Cubit<InsuranceBasicFilterState> {
  InsuranceBasicFilterCubit(this._insurancesUseCase)
      : super(const InsuranceBasicFilterState());
  final GetInsurancesUseCase _insurancesUseCase;

  void loadData() async {
    emit(state.copyWith(status: StateStatus.loading));
    var result = await _insurancesUseCase
        .call(GetInsuranceParam(state.basicFilterRequest));
    result.fold(
        (failure) =>
            emit(state.copyWith(status: StateStatus.error, failure: failure)),
        (response) => emit(
            state.copyWith(status: StateStatus.unknown, data: response.data)));
  }

  void clearData() {
    emit(state.copyWith(
        status: StateStatus.unknown,
        basicFilterRequest: const BasicFilterRequest()));
  }

  void selectDriversCount(bool isVip) {
    BasicFilterRequest data = state.basicFilterRequest;
    var newData = data.copyWith(isVip: isVip);
    emit(state.copyWith(
        status: StateStatus.unknown, basicFilterRequest: newData));
  }

  void selectPeriod(String period) {
    BasicFilterRequest data = state.basicFilterRequest;
    var newData = data.copyWith(period: period);
    emit(state.copyWith(
        status: StateStatus.unknown, basicFilterRequest: newData));
  }

  void selectRegion(String region) {
    BasicFilterRequest data = state.basicFilterRequest;
    var newData = data.copyWith(region: region);
    emit(state.copyWith(
        status: StateStatus.unknown, basicFilterRequest: newData));
  }

  void selectVehicleType(String type) {
    BasicFilterRequest data = state.basicFilterRequest;
    var newData = data.copyWith(vehicleType: type);
    emit(state.copyWith(
        status: StateStatus.unknown, basicFilterRequest: newData));
  }

  bool isValid() {
    var data = state.basicFilterRequest;
    if (data.period == null ||
        data.isVip == null ||
        data.vehicleType == null ||
        data.region == null) {
      return false;
    }
    return true;
  }
}
