// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TravelCalResponse _$$_TravelCalResponseFromJson(Map<String, dynamic> json) =>
    _$_TravelCalResponse(
      result: json['result'] as int?,
      resultMessage: json['result_message'] as String?,
      isSchengen: json['is_schengen'] as int?,
      programLiability: json['program_liability'] as int?,
      programPremium: (json['program_premium'] as num?)?.toDouble(),
      insurancePremium: json['insurance_premium'] as int?,
      premiumUsd: (json['premium_usd'] as num?)?.toDouble(),
      exchangeRate: (json['exchange_rate'] as num?)?.toDouble(),
      insuranceLiability: json['insurance_liability'] as int?,
      days: json['days'] as int?,
      travelers: (json['travelers'] as List<dynamic>?)
          ?.map((e) => Traveler.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TravelCalResponseToJson(
        _$_TravelCalResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'result_message': instance.resultMessage,
      'is_schengen': instance.isSchengen,
      'program_liability': instance.programLiability,
      'program_premium': instance.programPremium,
      'insurance_premium': instance.insurancePremium,
      'premium_usd': instance.premiumUsd,
      'exchange_rate': instance.exchangeRate,
      'insurance_liability': instance.insuranceLiability,
      'days': instance.days,
      'travelers': instance.travelers,
    };

_$_Traveler _$$_TravelerFromJson(Map<String, dynamic> json) => _$_Traveler(
      age: json['age'] as int?,
      liability: json['liability'] as int?,
      premium: (json['premium'] as num?)?.toDouble(),
      coefficient: (json['coefficient'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TravelerToJson(_$_Traveler instance) =>
    <String, dynamic>{
      'age': instance.age,
      'liability': instance.liability,
      'premium': instance.premium,
      'coefficient': instance.coefficient,
    };
