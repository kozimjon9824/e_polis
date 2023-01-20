import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_tab_manager_state.dart';

part 'filter_tab_manager_cubit.freezed.dart';

class FilterTabManagerCubit extends Cubit<FilterTabManagerState> {
  FilterTabManagerCubit() : super(const FilterTabManagerState.load(''));

  void changeTab(String tab) {
    emit(FilterTabManagerState.load(tab));
  }
}
