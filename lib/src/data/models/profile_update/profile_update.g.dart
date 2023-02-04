// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileUpdateRequest _$$_ProfileUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileUpdateRequest(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      photo: json['photo'] as String?,
      phone: json['phone'] as String?,
      otpCode: json['otpCode'] as String?,
    );

Map<String, dynamic> _$$_ProfileUpdateRequestToJson(
    _$_ProfileUpdateRequest instance) {
  final val = <String, dynamic>{
    'firstName': instance.firstName,
    'lastName': instance.lastName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('photo', instance.photo);
  writeNotNull('phone', instance.phone);
  val['otpCode'] = instance.otpCode;
  return val;
}
