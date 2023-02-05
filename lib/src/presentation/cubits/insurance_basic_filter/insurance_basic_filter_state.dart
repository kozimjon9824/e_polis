part of 'insurance_basic_filter_cubit.dart';

@freezed
class InsuranceBasicFilterState with _$InsuranceBasicFilterState {
  const factory InsuranceBasicFilterState(
      {@Default(StateStatus.unknown)
          StateStatus status,
      @Default(UnknownFailure())
          Failure failure,
      List<BasicFilterData>? data,
      String? id,
      @Default(BasicFilterRequest())
          BasicFilterRequest basicFilterRequest}) = _InsuranceBasicFilterState;
}
