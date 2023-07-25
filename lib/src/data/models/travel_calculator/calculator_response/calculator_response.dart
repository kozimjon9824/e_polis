import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculator_response.freezed.dart';
part 'calculator_response.g.dart';

@freezed
class TravelCalResponse with _$TravelCalResponse {
  const factory TravelCalResponse({
    int? result,
    @JsonKey(name: 'result_message') String? resultMessage,
    @JsonKey(name: 'is_schengen') int? isSchengen,
    @JsonKey(name: 'program_liability') int? programLiability,
    @JsonKey(name: 'program_premium') double? programPremium,
    @JsonKey(name: 'insurance_premium') int? insurancePremium,
    @JsonKey(name: 'premium_usd') double? premiumUsd,
    @JsonKey(name: 'exchange_rate') double? exchangeRate,
    @JsonKey(name: 'insurance_liability') int? insuranceLiability,
    int? days,
    List<Traveler>? travelers,
  }) = _TravelCalResponse;

  factory TravelCalResponse.fromJson(Map<String, dynamic> json) =>
      _$TravelCalResponseFromJson(json);
}

@freezed
class Traveler with _$Traveler {
  const factory Traveler({
    int? age,
    int? liability,
    double? premium,
    double? coefficient,
  }) = _Traveler;

  factory Traveler.fromJson(Map<String, dynamic> json) =>
      _$TravelerFromJson(json);
}
