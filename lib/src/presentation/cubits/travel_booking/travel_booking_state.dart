part of 'travel_booking_cubit.dart';

@freezed
class TravelBookingState with _$TravelBookingState {
  const factory TravelBookingState({
    List<TravellerMainInputs>? listOfTravellers,
    @Default(StateStatus.unknown) StateStatus status,
    @Default(UnknownFailure()) Failure failure,
    PassportDataResponse? applicantData,
    String? fName,
    String? lName,
    String? phone,
    String? address,
    String? bDate,
    String? passportSeries,
    String? passportNumber,
    String? inn,
  }) = _TravelBookingState;
}
