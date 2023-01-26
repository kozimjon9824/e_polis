import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/domain/repository/main.dart';

import '../../../data/models/input_driver/request/driver_passport_input.dart';
import '../../../data/models/input_driver/response/driver_passport_response.dart';

class AddDriverUseCase
    extends UseCase<DriverPassportInputResponse, AddDriverParams> {
  final IMainRepository _mainRepository;

  AddDriverUseCase(this._mainRepository);

  @override
  Future<Either<Failure, DriverPassportInputResponse>> call(
          AddDriverParams params) =>
      _mainRepository.addDriver(params.request);
}

class AddDriverParams {
  final DriverPassportInputRequest request;

  AddDriverParams(this.request);
}
