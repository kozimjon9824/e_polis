import 'package:dartz/dartz.dart';
import 'package:e_polis/src/data/models/countries/countries.dart';
import 'package:e_polis/src/data/models/multi_days/multi_days.dart';
import 'package:e_polis/src/data/models/travelers_type/travelers_type.dart';
import 'package:e_polis/src/data/models/trip_purpose/trip_purpose.dart';
import 'package:e_polis/src/domain/repository/travel.dart';

import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';

class GetMultiDaysUseCase extends UseCase<MultiDays, NoParams> {
  final ITravelRepository _travelRepository;

  GetMultiDaysUseCase(this._travelRepository);

  @override
  Future<Either<Failure, MultiDays>> call(NoParams params) =>
      _travelRepository.getMultiDays();
}
