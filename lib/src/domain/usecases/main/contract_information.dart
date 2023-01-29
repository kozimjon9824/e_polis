import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/contract_information/request/contract_info_request.dart';
import 'package:e_polis/src/data/models/contract_information/response/contract_info_response.dart';
import 'package:e_polis/src/domain/repository/main.dart';

class ContractInfoUseCase
    extends UseCase<ContractInfoResponse, ContractInfoParams> {
  final IMainRepository _mainRepository;

  ContractInfoUseCase(this._mainRepository);

  @override
  Future<Either<Failure, ContractInfoResponse>> call(
          ContractInfoParams params) =>
      _mainRepository.getContractInfo(params.productId, params.request);
}

class ContractInfoParams {
  final String productId;
  final ContractInfoRequest request;

  ContractInfoParams(this.productId, this.request);
}
