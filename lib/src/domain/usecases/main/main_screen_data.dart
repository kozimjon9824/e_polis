import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/main/main.dart';
import 'package:e_polis/src/domain/repository/main.dart';

class GetMainScreenDataUseCase extends UseCase<MainScreenData, NoParams> {
  final IMainRepository _mainRepository;

  GetMainScreenDataUseCase(this._mainRepository);

  @override
  Future<Either<Failure, MainScreenData>> call(NoParams params) =>
      _mainRepository.getMainData();
}
