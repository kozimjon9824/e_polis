import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_booking_request.freezed.dart';
part 'travel_booking_request.g.dart';

@freezed
class TravelBookingRequest with _$TravelBookingRequest {
  const factory TravelBookingRequest({
    Policy? policy,
    Applicant? applicant,
    Cost? cost,
    List<Traveler>? travelers,
  }) = _TravelBookingRequest;

  factory TravelBookingRequest.fromJson(Map<String, dynamic> json) =>
      _$TravelBookingRequestFromJson(json);
}

@freezed
class Applicant with _$Applicant {
  const factory Applicant({
    String? pinfl,
    Passport? passport,
    String? firstname,
    String? lastname,
    String? birthdate,
    String? address,
    String? phone,
  }) = _Applicant;

  factory Applicant.fromJson(Map<String, dynamic> json) =>
      _$ApplicantFromJson(json);
}

@freezed
class Passport with _$Passport {
  const factory Passport({
    String? series,
    String? number,
  }) = _Passport;

  factory Passport.fromJson(Map<String, dynamic> json) =>
      _$PassportFromJson(json);
}

@freezed
class Cost with _$Cost {
  const factory Cost({
    @JsonKey(name: 'insurance_premium') int? insurancePremium,
  }) = _Cost;

  factory Cost.fromJson(Map<String, dynamic> json) => _$CostFromJson(json);
}

@freezed
class Policy with _$Policy {
  const factory Policy({
    @JsonKey(name: 'policy_type') int? policyType,
    @JsonKey(name: 'multi_days') int? multiDays,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    String? country,
    int? program,
    @JsonKey(name: 'trip_purpose') int? tripPurpose,
    @JsonKey(name: 'travelers_type') int? travelersType,
  }) = _Policy;

  factory Policy.fromJson(Map<String, dynamic> json) => _$PolicyFromJson(json);
}

@freezed
class Traveler with _$Traveler {
  const factory Traveler({
    String? pinfl,
    Passport? passport,
    String? firstname,
    String? lastname,
    String? birthdate,
  }) = _Traveler;

  factory Traveler.fromJson(Map<String, dynamic> json) =>
      _$TravelerFromJson(json);
}
