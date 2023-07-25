import 'package:e_polis/src/data/models/delete_account/delete_account_request.dart';
import 'package:e_polis/src/data/models/delete_account_response/delete_account_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/error.dart';
import '../../../core/utils/utils.dart';
import '../../../domain/usecases/profile/delete_account.dart';

part 'confirm_account_delete_state.dart';

part 'confirm_account_delete_cubit.freezed.dart';

class ConfirmAccountDeleteCubit extends Cubit<ConfirmAccountDeleteState> {
  ConfirmAccountDeleteCubit(this._deleteAccountUseCase)
      : super(const ConfirmAccountDeleteState());
  final DeleteAccountUseCase _deleteAccountUseCase;

  void confirmDeletion(String otp) async {
    emit(state.copyWith(status: StateStatus.loading));
    var result = await _deleteAccountUseCase
        .call(DeleteAccountParams(DeleteAccountRequest(otpCode: otp)));
    result.fold(
      (failure) => emit(state.copyWith(
        status: StateStatus.error,
        failure: failure,
      )),
      (res) => emit(state.copyWith(
        status:
            res.state == 'DELETED' ? StateStatus.success : StateStatus.unknown,
      )),
    );
  }

  void loadInitial() {
    emit(state.copyWith(status: StateStatus.unknown));
  }
}
