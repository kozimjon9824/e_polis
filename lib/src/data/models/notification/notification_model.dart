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
    String? description,
    ActionType? actionButton,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@freezed
class ActionType with _$ActionType {
  const factory ActionType({String? action, String? value}) = _ActionType;

  factory ActionType.fromJson(Map<String, dynamic> json) =>
      _$ActionTypeFromJson(json);
}
