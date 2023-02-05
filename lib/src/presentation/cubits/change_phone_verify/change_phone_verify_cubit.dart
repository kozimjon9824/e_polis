import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/error.dart';
import '../../../data/models/profile_update/profile_update.dart';
import '../../../domain/usecases/profile/profile_update.dart';

part 'change_phone_verify_state.dart';

part 'change_phone_verify_cubit.freezed.dart';

class ChangePhoneVerifyCubit extends Cubit<ChangePhoneVerifyState> {
  ChangePhoneVerifyCubit(this._profileUseCase)
      : super(const ChangePhoneVerifyState.initial());

  final UpdateProfileUseCase _profileUseCase;

  void loadInitial() => emit(const ChangePhoneVerifyState.initial());

  void verifyPhone(ProfileUpdateRequest request, String code) async {
    emit(const ChangePhoneVerifyState.loading());
    var requestModel = request.copyWith(otpCode: code);
    var result = await _profileUseCase.call(ProfileParams(requestModel));
    result.fold((failure) => emit(ChangePhoneVerifyState.error(failure)),
        (response) => emit(const ChangePhoneVerifyState.success()));
  }

  void resendCode(ProfileUpdateRequest request) async {
    emit(const ChangePhoneVerifyState.loading());
    var requestModel = request;
    var result = await _profileUseCase.call(ProfileParams(requestModel));
    result.fold((failure) => emit(ChangePhoneVerifyState.error(failure)),
        (response) => emit(const ChangePhoneVerifyState.initial()));
  }
}
