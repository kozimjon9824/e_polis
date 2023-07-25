// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_booking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TravelBookingRequest _$$_TravelBookingRequestFromJson(
        Map<String, dynamic> json) =>
    _$_TravelBookingRequest(
      policy: json['policy'] == null
          ? null
          : Policy.fromJson(json['policy'] as Map<String, dynamic>),
      applicant: json['applicant'] == null
          ? null
          : Applicant.fromJson(json['applicant'] as Map<String, dynamic>),
      cost: json['cost'] == null
          ? null
          : Cost.fromJson(json['cost'] as Map<String, dynamic>),
      travelers: (json['travelers'] as List<dynamic>?)
          ?.map((e) => Traveler.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TravelBookingRequestToJson(
        _$_TravelBookingRequest instance) =>
    <String, dynamic>{
      'policy': instance.policy,
      'applicant': instance.applicant,
      'cost': instance.cost,
      'travelers': instance.travelers,
    };

_$_Applicant _$$_ApplicantFromJson(Map<String, dynamic> json) => _$_Applicant(
      pinfl: json['pinfl'] as String?,
      passport: json['passport'] == null
          ? null
          : Passport.fromJson(json['passport'] as Map<String, dynamic>),
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      birthdate: json['birthdate'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_ApplicantToJson(_$_Applicant instance) =>
    <String, dynamic>{
      'pinfl': instance.pinfl,
      'passport': instance.passport,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'birthdate': instance.birthdate,
      'address': instance.address,
      'phone': instance.phone,
    };

_$_Passport _$$_PassportFromJson(Map<String, dynamic> json) => _$_Passport(
      series: json['series'] as String?,
      number: json['number'] as String?,
    );

Map<String, dynamic> _$$_PassportToJson(_$_Passport instance) =>
    <String, dynamic>{
      'series': instance.series,
      'number': instance.number,
    };

_$_Cost _$$_CostFromJson(Map<String, dynamic> json) => _$_Cost(
      insurancePremium: json['insurance_premium'] as int?,
    );

Map<String, dynamic> _$$_CostToJson(_$_Cost instance) => <String, dynamic>{
      'insurance_premium': instance.insurancePremium,
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
      pinfl: json['pinfl'] as String?,
      passport: json['passport'] == null
          ? null
          : Passport.fromJson(json['passport'] as Map<String, dynamic>),
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      birthdate: json['birthdate'] as String?,
    );

Map<String, dynamic> _$$_TravelerToJson(_$_Traveler instance) =>
    <String, dynamic>{
      'pinfl': instance.pinfl,
      'passport': instance.passport,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'birthdate': instance.birthdate,
    };
