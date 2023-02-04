import 'package:e_polis/src/domain/usecases/auth/verify.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/error/error.dart';
import '../../../data/models/verify/request/verify.dart';

part 'verify_state.dart';

part 'verify_cubit.freezed.dart';

class VerifyCubit extends Cubit<VerifyState> {
  VerifyCubit(this._verifyUseCase) : super(const VerifyState.initial());
  final VerifyUseCase _verifyUseCase;

  void verify({required String code, required String phone}) async {
    emit(const VerifyState.loading());
    var result = await _verifyUseCase
        .call(VerifyParams(VerifyRequest(phone: '998$phone', otp: code)));
    result.fold((failure) => emit(VerifyState.error(failure)),
        (response) => emit(const VerifyState.success()));
  }

  void loadInitial() => emit(const VerifyState.initial());
}
