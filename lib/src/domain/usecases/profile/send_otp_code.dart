import 'package:dartz/dartz.dart';
import 'package:e_polis/src/data/models/delete_account/delete_account_request.dart';
import 'package:e_polis/src/data/models/delete_account_response/delete_account_response.dart';

import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';
import '../../repository/profile.dart';

class SendOtpCodeUseCase extends UseCase<DeleteAccountResponse, NoParams> {
  final IProfileRepository _profileRepository;

  SendOtpCodeUseCase(this._profileRepository);

  @override
  Future<Either<Failure, DeleteAccountResponse>> call(NoParams params) =>
      _profileRepository.sendOtpCode();
}
