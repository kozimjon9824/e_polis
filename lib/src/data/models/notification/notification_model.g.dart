// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationModel _$$_NotificationModelFromJson(Map<String, dynamic> json) =>
    _$_NotificationModel(
      date: json['date'] as String?,
      day: json['day'] as String?,
      photo: json['photo'] as String?,
      title: json['title'] as String?,
      text: json['text'] as String?,
      actionButton: json['actionButton'] == null
          ? null
          : ActionType.fromJson(json['actionButton'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'day': instance.day,
      'photo': instance.photo,
      'title': instance.title,
      'text': instance.text,
      'actionButton': instance.actionButton,
    };

_$_ActionType _$$_ActionTypeFromJson(Map<String, dynamic> json) =>
    _$_ActionType(
      title: json['title'] as String?,
      type: json['type'] as String?,
      destination: json['destination'] as String?,
      internalId: json['internalId'] as String?,
    );

Map<String, dynamic> _$$_ActionTypeToJson(_$_ActionType instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'destination': instance.destination,
      'internalId': instance.internalId,
    };

_$_NotificationResponse _$$_NotificationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int?,
    );

Map<String, dynamic> _$$_NotificationResponseToJson(
        _$_NotificationResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalCount': instance.totalCount,
    };
