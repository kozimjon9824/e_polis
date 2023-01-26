part of 'insurance_details_cubit.dart';

@freezed
class InsuranceDetailsState with _$InsuranceDetailsState {
  const factory InsuranceDetailsState.loading() = _Loading;
  const factory InsuranceDetailsState.error(Failure failure) = _Error;
  const factory InsuranceDetailsState.loaded(
      InsuranceDetails insuranceDetails) = _Loaded;
}
