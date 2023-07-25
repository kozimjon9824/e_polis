part of 'travel_attributes_cubit.dart';

@freezed
class TravelAttributesState with _$TravelAttributesState {
  const factory TravelAttributesState({
    @Default(StateStatus.unknown) StateStatus status,
    @Default(UnknownFailure()) Failure failure,
    Countries? countries,
    Programs? programs,
    TripPurpose? tripPurpose,
    TravelersType? travelersType,
    MultiDays? multiDays,
    PolicyType? policyType,
    TravelAttModel? travelAttModel,
  }) = _TravelAttributesState;
}
