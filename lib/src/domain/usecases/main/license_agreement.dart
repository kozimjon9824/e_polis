import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/domain/repository/main.dart';
import '../../../core/error/error.dart';

class LicenseAgreementUseCase extends UseCase<dynamic, NoParams> {
  final IMainRepository _mainRepository;

  LicenseAgreementUseCase(this._mainRepository);

  @override
  Future<Either<Failure, dynamic>> call(NoParams params) =>
      _mainRepository.getLicenseAgreement();
}
