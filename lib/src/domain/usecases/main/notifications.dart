import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/notification/notification_model.dart';
import 'package:e_polis/src/domain/repository/main.dart';

class NotificationUseCase
    extends UseCase<NotificationResponse, NotificationParams> {
  final IMainRepository _mainRepository;

  NotificationUseCase(this._mainRepository);

  @override
  Future<Either<Failure, NotificationResponse>> call(
          NotificationParams params) =>
      _mainRepository.getNotifications(params.page, params.limit);
}

class NotificationParams {
  final int page;
  final int limit;

  NotificationParams(this.page, this.limit);
}
