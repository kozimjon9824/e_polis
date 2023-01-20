part of 'license_agreement_cubit.dart';

@freezed
class LicenseAgreementState with _$LicenseAgreementState {
  const factory LicenseAgreementState.loading() = _Loading;

  const factory LicenseAgreementState.loaded(
      {dynamic text, @Default(false) bool isCheck}) = _Loaded;

  const factory LicenseAgreementState.error(Failure failure) = _Error;
}
