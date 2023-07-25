// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TravelCalRequest _$$_TravelCalRequestFromJson(Map<String, dynamic> json) =>
    _$_TravelCalRequest(
      policy: json['policy'] == null
          ? null
          : Policy.fromJson(json['policy'] as Map<String, dynamic>),
      travelers: (json['travelers'] as List<dynamic>?)
          ?.map((e) => Traveler.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TravelCalRequestToJson(_$_TravelCalRequest instance) =>
    <String, dynamic>{
      'policy': instance.policy,
      'travelers': instance.travelers,
    };

_$_Policy _$$_PolicyFromJson(Map<String, dynamic> json) => _$_Policy(
      policyType: json['policy_type'] as int?,
      multiDays: json['multi_days'] as int?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      country: json['country'] as String?,
      program: json['program'] as int?,
      tripPurpose: json['trip_purpose'] as int?,
      travelersType: json['travelers_type'] as int?,
    );

Map<String, dynamic> _$$_PolicyToJson(_$_Policy instance) => <String, dynamic>{
      'policy_type': instance.policyType,
      'multi_days': instance.multiDays,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'country': instance.country,
      'program': instance.program,
      'trip_purpose': instance.tripPurpose,
      'travelers_type': instance.travelersType,
    };

_$_Traveler _$$_TravelerFromJson(Map<String, dynamic> json) => _$_Traveler(
      birthdate: json['birthdate'] as String?,
    );

Map<String, dynamic> _$$_TravelerToJson(_$_Traveler instance) =>
    <String, dynamic>{
      'birthdate': instance.birthdate,
    };
