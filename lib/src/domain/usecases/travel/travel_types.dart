import 'package:dartz/dartz.dart';
import 'package:e_polis/src/data/models/travelers_type/travelers_type.dart';
import 'package:e_polis/src/domain/repository/travel.dart';
import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';

class GetTravelTypesUseCase extends UseCase<TravelersType, NoParams> {
  final ITravelRepository _travelRepository;

  GetTravelTypesUseCase(this._travelRepository);

  @override
  Future<Either<Failure, TravelersType>> call(NoParams params) =>
      _travelRepository.getTravelTypes();
}
