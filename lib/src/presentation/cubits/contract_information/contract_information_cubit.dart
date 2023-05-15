import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/data/models/contract_information/request/contract_info_request.dart';
import 'package:e_polis/src/domain/usecases/main/contract_information.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/contract_information/response/contract_info_response.dart';

part 'contract_information_state.dart';

part 'contract_information_cubit.freezed.dart';

class ContractInformationCubit extends Cubit<ContractInformationState> {
  ContractInformationCubit(this._contractInfoUseCase)
      : super(const ContractInformationState());
  final ContractInfoUseCase _contractInfoUseCase;

  void loadContractInfo(
      {required String productId, required ContractInfoRequest request}) async {
    var data = request;
    if (data.vehicleType == null ||
        data.region == null ||
        data.startDate == null ||
        data.isVip == null ||
        data.period == null) {
      return;
    }
    emit(state.copyWith(status: StateStatus.loading));
    var result =
        await _contractInfoUseCase.call(ContractInfoParams(productId, request));
    result.fold(
      (failure) =>
          emit(state.copyWith(failure: failure, status: StateStatus.error)),
      (response) =>
          emit(state.copyWith(status: StateStatus.unknown, contract: response)),
    );
  }

  void onClear() {
    emit(state.copyWith(status: StateStatus.unknown, contract: null));
  }
}
