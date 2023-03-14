import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/domain/usecases/main/license_agreement.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'license_agreement_state.dart';

part 'license_agreement_cubit.freezed.dart';

class LicenseAgreementCubit extends Cubit<LicenseAgreementState> {
  LicenseAgreementCubit(this._licenseAgreementUseCase)
      : super(const LicenseAgreementState.loading());
  final LicenseAgreementUseCase _licenseAgreementUseCase;

  void loadData() async {
    emit(const LicenseAgreementState.loading());
    var result = await _licenseAgreementUseCase.call(NoParams());
    result.fold(
      (failure) => emit(LicenseAgreementState.error(failure)),
      (data) => emit(LicenseAgreementState.loaded(text: data)),
    );
  }

  void checkAgreement(dynamic text, bool status) {
    emit(LicenseAgreementState.loaded(text: text, isCheck: !status));
  }
}
