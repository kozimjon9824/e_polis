import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/domain/repository/main.dart';

import '../../../data/models/driver_passport_validation/driver_passport_validation.dart';

class ValidatePassportUseCase extends UseCase<dynamic, ValidatePassportParams> {
  final IMainRepository _mainRepository;

  ValidatePassportUseCase(this._mainRepository);

  @override
  Future<Either<Failure, dynamic>> call(ValidatePassportParams params) =>
      _mainRepository.validateDriverPassport(params.request);
}

class ValidatePassportParams {
  final DriverPassportValidation request;

  ValidatePassportParams(this.request);
}
