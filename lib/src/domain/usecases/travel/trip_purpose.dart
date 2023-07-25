import 'package:dartz/dartz.dart';
import 'package:e_polis/src/data/models/countries/countries.dart';
import 'package:e_polis/src/data/models/trip_purpose/trip_purpose.dart';
import 'package:e_polis/src/domain/repository/travel.dart';

import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';

class GetTripPurposeUseCase extends UseCase<TripPurpose, NoParams> {
  final ITravelRepository _travelRepository;

  GetTripPurposeUseCase(this._travelRepository);

  @override
  Future<Either<Failure, TripPurpose>> call(NoParams params) =>
      _travelRepository.getTripPurpose();
}
