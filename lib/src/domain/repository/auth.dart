import 'package:dartz/dartz.dart';
import 'package:e_polis/src/data/models/login/login.dart';
import 'package:e_polis/src/data/models/verify/request/verify.dart';
import 'package:e_polis/src/data/models/verify/response/verify_response.dart';

import '../../core/error/error.dart';

abstract class IAuthRepository {
  Future<Either<Failure, dynamic>> login(LoginRequest request);
  Future<Either<Failure, VerifyResponse>> verify(VerifyRequest request);
  Future<Either<Failure, bool>> checkUserAuth();
  Future<Either<Failure, bool>> logout();
}
