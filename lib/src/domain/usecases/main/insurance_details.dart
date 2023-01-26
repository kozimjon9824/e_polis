import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/basic_filter/request/basic_filter_request.dart';
import 'package:e_polis/src/data/models/insurance_details/insurance_details.dart';
import 'package:e_polis/src/domain/repository/main.dart';

class InsuranceDetailsUseCase
    extends UseCase<InsuranceDetails, InsuranceDetailsParam> {
  final IMainRepository _mainRepository;

  InsuranceDetailsUseCase(this._mainRepository);

  @override
  Future<Either<Failure, InsuranceDetails>> call(
          InsuranceDetailsParam params) =>
      _mainRepository.getInsuranceDetails(params.id, params.request);
}

class InsuranceDetailsParam {
  final String id;
  final BasicFilterRequest request;

  InsuranceDetailsParam(this.request, this.id);
}
