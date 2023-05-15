import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/data/models/insurance_details/insurance_details.dart';
import 'package:e_polis/src/domain/usecases/main/insurance_details.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/basic_filter/request/basic_filter_request.dart';

part 'insurance_details_state.dart';

part 'insurance_details_cubit.freezed.dart';

class InsuranceDetailsCubit extends Cubit<InsuranceDetailsState> {
  InsuranceDetailsCubit(this._insuranceDetailsUseCase)
      : super(const InsuranceDetailsState.loading());
  final InsuranceDetailsUseCase _insuranceDetailsUseCase;

  void loadData(String id, BasicFilterRequest request) async {
    emit(const InsuranceDetailsState.loading());
    var result =
        await _insuranceDetailsUseCase.call(InsuranceDetailsParam(request, id));
    result.fold(
      (failure) => emit(InsuranceDetailsState.error(failure)),
      (res) => emit(InsuranceDetailsState.loaded(res)),
    );
  }
}
