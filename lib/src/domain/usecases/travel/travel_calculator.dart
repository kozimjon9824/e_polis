import 'package:dartz/dartz.dart';
import 'package:e_polis/src/data/models/travel_calculator/calculator_request/calculator_request.dart';
import 'package:e_polis/src/data/models/travel_calculator/calculator_response/calculator_response.dart';
import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';
import '../../repository/travel.dart';

class TravelCalculatorUseCase
    extends UseCase<TravelCalResponse, TravelCalParams> {
  final ITravelRepository _travelRepository;

  TravelCalculatorUseCase(this._travelRepository);

  @override
  Future<Either<Failure, TravelCalResponse>> call(TravelCalParams params) =>
      _travelRepository.calculateTravel(params.request);
}

class TravelCalParams {
  final TravelCalRequest request;

  TravelCalParams(this.request);
}
