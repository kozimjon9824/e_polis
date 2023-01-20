import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/login/login.dart';
import 'package:e_polis/src/domain/repository/auth.dart';

class LoginUseCase extends UseCase<dynamic, LoginParams> {
  final IAuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  @override
  Future<Either<Failure, dynamic>> call(LoginParams params) =>
      _authRepository.login(params.request);
}

class LoginParams {
  final LoginRequest request;

  LoginParams(this.request);
}
