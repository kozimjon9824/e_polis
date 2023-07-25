part of 'buy_travel_cubit.dart';

@freezed
class BuyTravelState with _$BuyTravelState {
  const factory BuyTravelState({
    @Default(StateStatus.unknown) StateStatus status,
    @Default(UnknownFailure()) Failure failure,
    TravelBookingRequest? request,
  }) = _BuyTravelState;
}
