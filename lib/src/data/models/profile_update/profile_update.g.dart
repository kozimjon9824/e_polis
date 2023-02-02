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
    );

Map<String, dynamic> _$$_ProfileUpdateRequestToJson(
    _$_ProfileUpdateRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('photo', instance.photo);
  return val;
}
