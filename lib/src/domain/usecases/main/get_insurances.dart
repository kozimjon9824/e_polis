import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/basic_filter/request/basic_filter_request.dart';
import 'package:e_polis/src/data/models/basic_filter/response/basic_filter_response.dart';
import 'package:e_polis/src/domain/repository/main.dart';

class GetInsurancesUseCase
    extends UseCase<BasicFilterResponse, GetInsuranceParam> {
  final IMainRepository _mainRepository;

  GetInsurancesUseCase(this._mainRepository);

  @override
  Future<Either<Failure, BasicFilterResponse>> call(GetInsuranceParam params) =>
      _mainRepository.getInsurances(params.request);
}

class GetInsuranceParam {
  final BasicFilterRequest request;

  GetInsuranceParam(this.request);
}
