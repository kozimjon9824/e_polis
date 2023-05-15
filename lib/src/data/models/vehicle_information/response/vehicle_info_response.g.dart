// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleInfoResponse _$$_VehicleInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_VehicleInfoResponse(
      isPassportOK: json['isPassportOK'] as bool?,
      region: json['region'] as int?,
      vehicle: json['vehicle'] == null
          ? null
          : VehicleData.fromJson(json['vehicle'] as Map<String, dynamic>),
      owner: json['owner'] == null
          ? null
          : OwnerData.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VehicleInfoResponseToJson(
        _$_VehicleInfoResponse instance) =>
    <String, dynamic>{
      'isPassportOK': instance.isPassportOK,
      'region': instance.region,
      'vehicle': instance.vehicle,
      'owner': instance.owner,
    };

_$_VehicleData _$$_VehicleDataFromJson(Map<String, dynamic> json) =>
    _$_VehicleData(
      model: json['model'] as String?,
      address: json['address'] as String?,
      issueYear: json['issueYear'] as int?,
      type: json['type'] == null
          ? null
          : VehicleType.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VehicleDataToJson(_$_VehicleData instance) =>
    <String, dynamic>{
      'model': instance.model,
      'address': instance.address,
      'issueYear': instance.issueYear,
      'type': instance.type,
    };

_$_OwnerData _$$_OwnerDataFromJson(Map<String, dynamic> json) => _$_OwnerData(
      fullName: json['fullName'] as String?,
      pinfl: json['pinfl'] as String?,
    );

Map<String, dynamic> _$$_OwnerDataToJson(_$_OwnerData instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'pinfl': instance.pinfl,
    };

_$_VehicleType _$$_VehicleTypeFromJson(Map<String, dynamic> json) =>
    _$_VehicleType(
      name: json['name'] as String?,
      value: json['value'] as int?,
    );

Map<String, dynamic> _$$_VehicleTypeToJson(_$_VehicleType instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
