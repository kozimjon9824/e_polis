import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculator_request.freezed.dart';
part 'calculator_request.g.dart';

@freezed
class TravelCalRequest with _$TravelCalRequest {
  const factory TravelCalRequest({
    Policy? policy,
    List<Traveler>? travelers,
  }) = _TravelCalRequest;

  factory TravelCalRequest.fromJson(Map<String, dynamic> json) =>
      _$TravelCalRequestFromJson(json);
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
    String? birthdate,
  }) = _Traveler;

  factory Traveler.fromJson(Map<String, dynamic> json) =>
      _$TravelerFromJson(json);
}
