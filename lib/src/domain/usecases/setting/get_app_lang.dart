import 'package:dartz/dartz.dart';

import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';
import '../../repository/settings.dart';

class GetAppLangUseCase extends UseCase<String, NoParams> {
  final ISettingRepository _settingRepository;

  GetAppLangUseCase(this._settingRepository);

  @override
  Future<Either<Failure, String>> call(NoParams params) =>
      _settingRepository.getAppLang();
}
