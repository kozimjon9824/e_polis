import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/login/login.dart';
import 'package:e_polis/src/data/models/verify/request/verify.dart';
import 'package:e_polis/src/data/models/verify/response/verify_response.dart';
import 'package:e_polis/src/domain/repository/auth.dart';

class VerifyUseCase extends UseCase<VerifyResponse, VerifyParams> {
  final IAuthRepository _authRepository;

  VerifyUseCase(this._authRepository);

  @override
  Future<Either<Failure, VerifyResponse>> call(VerifyParams params) =>
      _authRepository.verify(params.request);
}

class VerifyParams {
  final VerifyRequest request;

  VerifyParams(this.request);
}
