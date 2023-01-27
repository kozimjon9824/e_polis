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
      description: json['description'] as String?,
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
      'description': instance.description,
      'actionButton': instance.actionButton,
    };

_$_ActionType _$$_ActionTypeFromJson(Map<String, dynamic> json) =>
    _$_ActionType(
      action: json['action'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_ActionTypeToJson(_$_ActionType instance) =>
    <String, dynamic>{
      'action': instance.action,
      'value': instance.value,
    };
