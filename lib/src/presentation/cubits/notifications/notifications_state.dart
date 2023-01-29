part of 'notifications_cubit.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState(
      {@Default([]) List<NotificationModel> notifications,
      @Default(StateStatus.unknown) StateStatus status,
      @Default(UnknownFailure()) Failure failure,
      @Default(1) int page,
      @Default(false) bool loadingNotification,
      @Default(false) bool hasMax}) = _NotificationsState;
}
