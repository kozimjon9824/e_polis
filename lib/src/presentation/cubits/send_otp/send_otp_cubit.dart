import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/error.dart';
import '../../../core/utils/utils.dart';
import '../../../domain/usecases/profile/send_otp_code.dart';
part 'send_otp_state.dart';
part 'send_otp_cubit.freezed.dart';

class SendOtpCubit extends Cubit<SendOtpState> {
  SendOtpCubit(this._sendOtpCodeUseCase) : super(const SendOtpState());
  final SendOtpCodeUseCase _sendOtpCodeUseCase;

  void sendOtpRequest() async {
    emit(state.copyWith(status: StateStatus.loading));
    var result = await _sendOtpCodeUseCase.call(NoParams());
    result.fold(
      (failure) =>
          emit(state.copyWith(status: StateStatus.error, failure: failure)),
      (response) => emit(state.copyWith(
        status: response.state == 'CONFIRMATION'
            ? StateStatus.success
            : StateStatus.unknown,
      )),
    );
  }
}
