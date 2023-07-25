part of 'travel_calculator_cubit.dart';

@freezed
class TravelCalculatorState with _$TravelCalculatorState {
  const factory TravelCalculatorState({
    @Default(StateStatus.unknown) StateStatus status,
    @Default(UnknownFailure()) Failure failure,
    TravelCalResponse? calResponse,
  }) = _TravelCalculatorState;
}
