import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';

part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    String? date,
    String? day,
    String? photo,
    String? title,
    String? text,
    ActionType? actionButton,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@freezed
class ActionType with _$ActionType {
  const factory ActionType(
      {String? title,
      String? type,
      String? destination,
      String? internalId}) = _ActionType;

  factory ActionType.fromJson(Map<String, dynamic> json) =>
      _$ActionTypeFromJson(json);
}

@freezed
class NotificationResponse with _$NotificationResponse {
  const factory NotificationResponse(
      {List<NotificationModel>? data, int? totalCount}) = _NotificationResponse;

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);
}
