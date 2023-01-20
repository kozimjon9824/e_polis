import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/domain/repository/auth.dart';

class LogoutUseCase extends UseCase<bool, NoParams> {
  final IAuthRepository _authRepository;
  LogoutUseCase(this._authRepository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) =>
      _authRepository.logout();
}
