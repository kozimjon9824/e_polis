part of 'manage_insurance_stack_views_cubit.dart';

@freezed
abstract class ManageInsuranceStackViewsState
    with _$ManageInsuranceStackViewsState {
  const factory ManageInsuranceStackViewsState.load(int index) = _Load;
}
