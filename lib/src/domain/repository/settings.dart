import 'package:dartz/dartz.dart';
import 'package:e_polis/src/data/models/help_data/help_data.dart';

import '../../core/error/error.dart';

abstract class ISettingRepository {
  Future<Either<Failure, String>> getAppLang();
  Future<Either<Failure, String>> setAppLang(String lang);
  Future<Either<Failure, HelpData>> getFaq();
}
