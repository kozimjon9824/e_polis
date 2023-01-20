import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_insurance_stack_views_state.dart';

part 'manage_insurance_stack_views_cubit.freezed.dart';

class ManageInsuranceStackViewsCubit
    extends Cubit<ManageInsuranceStackViewsState> {
  ManageInsuranceStackViewsCubit()
      : super(const ManageInsuranceStackViewsState.load(0));

  void changeIndex(int index) =>
      emit(ManageInsuranceStackViewsState.load(index));
}
