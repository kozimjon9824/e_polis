import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/select_values/select_values.dart';
import 'package:e_polis/src/domain/repository/main.dart';

class GetDropDownValuesUseCase extends UseCase<SelectValues, NoParams> {
  final IMainRepository _mainRepository;

  GetDropDownValuesUseCase(this._mainRepository);

  @override
  Future<Either<Failure, SelectValues>> call(NoParams params) =>
      _mainRepository.getDropDownValue();
}
