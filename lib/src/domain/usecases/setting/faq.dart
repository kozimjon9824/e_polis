import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/help_data/help_data.dart';
import 'package:e_polis/src/domain/repository/settings.dart';

class FaqUseCase extends UseCase<HelpData, NoParams> {
  final ISettingRepository _settingRepository;

  FaqUseCase(this._settingRepository);

  @override
  Future<Either<Failure, HelpData>> call(NoParams params) =>
      _settingRepository.getFaq();
}
