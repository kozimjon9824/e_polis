part of 'insurance_basic_filter_cubit.dart';

@freezed
class InsuranceBasicFilterState with _$InsuranceBasicFilterState {
  const factory InsuranceBasicFilterState({
    @Default(StateStatus.unknown) StateStatus status,
    @Default(UnknownFailure()) Failure failure,
    List<BasicFilterData>? data,
    List<BasicFilterData>? searchResult,
    String? id,
    @Default(false) bool clearList,
    @Default(BasicFilterRequest(isVip: false, period: PERIOD_MONTHS))
        BasicFilterRequest basicFilterRequest,
  }) = _InsuranceBasicFilterState;
}
