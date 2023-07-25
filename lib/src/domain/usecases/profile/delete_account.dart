import 'package:dartz/dartz.dart';
import 'package:e_polis/src/data/models/delete_account/delete_account_request.dart';
import 'package:e_polis/src/data/models/delete_account_response/delete_account_response.dart';
import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';
import '../../repository/profile.dart';
import 'send_otp_code.dart';

class DeleteAccountUseCase
    extends UseCase<DeleteAccountResponse, DeleteAccountParams> {
  final IProfileRepository _profileRepository;

  DeleteAccountUseCase(this._profileRepository);

  @override
  Future<Either<Failure, DeleteAccountResponse>> call(
          DeleteAccountParams params) =>
      _profileRepository.deleteAccount(params.deleteAccountRequest);
}

class DeleteAccountParams {
  final DeleteAccountRequest deleteAccountRequest;

  DeleteAccountParams(this.deleteAccountRequest);
}
