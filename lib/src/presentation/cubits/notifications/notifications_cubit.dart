import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/domain/usecases/main/notifications.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/error/error.dart';
import '../../../data/models/notification/notification_model.dart';

part 'notifications_state.dart';

part 'notifications_cubit.freezed.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit(this._notificationUseCase)
      : super(const NotificationsState());
  final NotificationUseCase _notificationUseCase;

  void loadNotification() async {
    emit(state.copyWith(status: StateStatus.loading));
    var result =
        await _notificationUseCase.call(NotificationParams(state.page, 10));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: StateStatus.error)),
        (response) => emit(state.copyWith(
            status: StateStatus.unknown, notifications: response.data ?? [])));
  }
}
