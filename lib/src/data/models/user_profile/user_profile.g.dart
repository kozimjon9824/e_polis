// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileResponse _$$_UserProfileResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserProfileResponse(
      lastName: json['lastName'] as String?,
      firstName: json['firstName'] as String?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$_UserProfileResponseToJson(
        _$_UserProfileResponse instance) =>
    <String, dynamic>{
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'phone': instance.phone,
      'photo': instance.photo,
    };
