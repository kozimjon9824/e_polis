import 'package:dartz/dartz.dart';
import 'package:e_polis/src/data/models/passport_data_response/passport_data_response.dart';
import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';
import '../../../data/models/input_driver/request/driver_passport_input.dart';
import '../../repository/travel.dart';

class GetInfoByPassportUseCase
    extends UseCase<PassportDataResponse, PassportDataParams> {
  final ITravelRepository _travelRepository;

  GetInfoByPassportUseCase(this._travelRepository);

  @override
  Future<Either<Failure, PassportDataResponse>> call(
          PassportDataParams params) =>
      _travelRepository.getInformationByPassport(params.request);
}

class PassportDataParams {
  final DriverPassportInputRequest request;

  PassportDataParams(this.request);
}
