import 'package:dartz/dartz.dart';
import 'package:e_polis/src/data/models/programms/programms.dart';
import 'package:e_polis/src/domain/repository/travel.dart';

import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';

class GetProgramsUseCase extends UseCase<Programs, NoParams> {
  final ITravelRepository _travelRepository;

  GetProgramsUseCase(this._travelRepository);

  @override
  Future<Either<Failure, Programs>> call(NoParams params) =>
      _travelRepository.getPrograms();
}
