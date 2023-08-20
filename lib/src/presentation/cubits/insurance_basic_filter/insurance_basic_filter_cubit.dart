import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/constants/constants.dart';
import '../../../data/models/basic_filter/request/basic_filter_request.dart';
import '../../../data/models/basic_filter/response/basic_filter_response.dart';
import '../../../domain/usecases/main/get_insurances.dart';

part 'insurance_basic_filter_state.dart';

part 'insurance_basic_filter_cubit.freezed.dart';

class InsuranceBasicFilterCubit extends Cubit<InsuranceBasicFilterState> {
  InsuranceBasicFilterCubit(this._insurancesUseCase)
      : super(const InsuranceBasicFilterState(
            basicFilterRequest:
                BasicFilterRequest(isVip: false, period: PERIOD_YEAR)));
  final GetInsurancesUseCase _insurancesUseCase;

  void loadData() async {
    emit(state.copyWith(status: StateStatus.loading));
    var result = await _insurancesUseCase
        .call(GetInsuranceParam(state.basicFilterRequest));
    result.fold(
      (failure) =>
          emit(state.copyWith(status: StateStatus.error, failure: failure)),
      (response) => emit(
          state.copyWith(status: StateStatus.unknown, data: response.data)),
    );
  }

  /// no use
  void searchData(String text) async {
    if (text.length < 2) {
      return;
    }
    emit(state.copyWith(status: StateStatus.loading));
    await Future.delayed(const Duration(milliseconds: 500));
    var list = state.data ?? [];
    final searchResult = list
        .where((element) =>
            (element.policyAmount?.toString().contains(text) ?? false))
        .toList();
    emit(state.copyWith(
      status: StateStatus.unknown,
      searchResult: searchResult,
    ));
  }

  /// no use
  void clearSearch() =>
      emit(state.copyWith(status: StateStatus.unknown, searchResult: null));

  void clearData() {
    emit(state.copyWith(
      status: StateStatus.unknown,
      id: null,
      basicFilterRequest: const BasicFilterRequest(),
    ));
  }

  void inputProductId(String id) {
    emit(state.copyWith(status: StateStatus.unknown, id: id));
  }

  void selectDriversCount(bool isVip) {
    if (state.restriction) return;
    BasicFilterRequest data = state.basicFilterRequest;
    var newData = data.copyWith(isVip: isVip);
    emit(state.copyWith(
      status: StateStatus.unknown,
      basicFilterRequest: newData,
    ));
  }

  void setRestrictionValue(bool restriction) {
    emit(state.copyWith(status: StateStatus.unknown, restriction: restriction));
  }

  void selectPeriod(String period) {
    if (state.restriction) return;
    BasicFilterRequest data = state.basicFilterRequest;
    var newData = data.copyWith(period: period);
    emit(state.copyWith(
      status: StateStatus.unknown,
      basicFilterRequest: newData,
    ));
  }

  void selectRegion(int? region) {
    BasicFilterRequest data = state.basicFilterRequest;
    var newData = data.copyWith(region: region);
    emit(state.copyWith(
      status: StateStatus.unknown,
      basicFilterRequest: newData,
    ));
  }

  void selectVehicleType(int type) {
    BasicFilterRequest data = state.basicFilterRequest;
    var newData = data.copyWith(vehicleType: type);
    emit(state.copyWith(
      status: StateStatus.unknown,
      basicFilterRequest: newData,
    ));
  }

  void clearList(bool c) {
    emit(state.copyWith(status: StateStatus.loading));
    emit(state.copyWith(status: StateStatus.unknown, clearList: c));
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
