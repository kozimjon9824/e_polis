import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/domain/repository/main.dart';

import '../../../data/models/vehicle_information/request/vehicle_info_request.dart';
import '../../../data/models/vehicle_information/response/vehicle_info_response.dart';

class CheckVehicleInfoUseCase
    extends UseCase<VehicleInfoResponse, CheckVehicleInfoParam> {
  final IMainRepository _mainRepository;

  CheckVehicleInfoUseCase(this._mainRepository);

  @override
  Future<Either<Failure, VehicleInfoResponse>> call(
          CheckVehicleInfoParam params) =>
      _mainRepository.checkVehicleInfo(params.request);
}

class CheckVehicleInfoParam {
  final VehicleInfoRequest request;

  CheckVehicleInfoParam(this.request);
}
