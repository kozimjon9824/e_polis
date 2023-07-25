import 'package:dartz/dartz.dart';
import 'package:e_polis/src/data/models/countries/countries.dart';
import 'package:e_polis/src/domain/repository/travel.dart';

import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';

class GetCountriesUseCase extends UseCase<Countries, NoParams> {
  final ITravelRepository _travelRepository;

  GetCountriesUseCase(this._travelRepository);

  @override
  Future<Either<Failure, Countries>> call(NoParams params) =>
      _travelRepository.getCountries();
}
