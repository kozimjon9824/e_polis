import 'package:e_polis/src/data/models/travel_calculator/calculator_request/calculator_request.dart'
    as request_model;
import 'package:e_polis/src/data/models/travel_calculator/calculator_response/calculator_response.dart';
import 'package:e_polis/src/domain/usecases/travel/travel_calculator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/error.dart';
import '../../../core/utils/helper_models.dart';
import '../../../core/utils/utils.dart';

part 'travel_calculator_state.dart';

part 'travel_calculator_cubit.freezed.dart';

class TravelCalculatorCubit extends Cubit<TravelCalculatorState> {
  TravelCalculatorCubit(this._calculatorUseCase)
      : super(const TravelCalculatorState());
  final TravelCalculatorUseCase _calculatorUseCase;

  void calculateTravelPrice(TravelAttModel travelAttModel) async {
    emit(state.copyWith(status: StateStatus.loading));
    var request = request_model.TravelCalRequest(
      policy: request_model.Policy(
        policyType: travelAttModel.policyType?.id,
        multiDays: travelAttModel.multiDays?.id,
        startDate: travelAttModel.startDate,
        endDate: travelAttModel.endDate,
        country: travelAttModel.countries?.map((e) => e.id).toList().join(':'),
        program: travelAttModel.programs?.id,
        tripPurpose: travelAttModel.tripPurpose?.id,
        travelersType: travelAttModel.travelersType?.id,
      ),
      travelers: travelAttModel.travellers
          .map((e) => request_model.Traveler(birthdate: e))
          .toList(),
    );
    var result = await _calculatorUseCase.call(TravelCalParams(request));
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: StateStatus.error,
          failure: failure,
        ),
      ),
      (response) => emit(
        state.copyWith(
          status: StateStatus.success,
          calResponse: response,
        ),
      ),
    );
  }
}
