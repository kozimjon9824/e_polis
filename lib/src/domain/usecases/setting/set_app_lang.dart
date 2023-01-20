import 'package:dartz/dartz.dart';

import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';
import '../../repository/settings.dart';

class SetAppLangUseCase extends UseCase<String, AppLangParam> {
  final ISettingRepository _settingRepository;

  SetAppLangUseCase(this._settingRepository);

  @override
  Future<Either<Failure, String>> call(AppLangParam params) =>
      _settingRepository.setAppLang(params.lang);
}

class AppLangParam {
  final String lang;
  AppLangParam(this.lang);
}
