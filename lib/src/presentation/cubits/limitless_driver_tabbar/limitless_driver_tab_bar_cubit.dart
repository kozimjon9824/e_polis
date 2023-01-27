import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/helper_models.dart';
import '../../../core/utils/utils.dart';

part 'limitless_driver_tab_bar_state.dart';
part 'limitless_driver_tab_bar_cubit.freezed.dart';

class LimitlessDriverTabBarCubit extends Cubit<LimitlessDriverTabBarState> {
  LimitlessDriverTabBarCubit() : super(const LimitlessDriverTabBarState());

  void changeTab(int index) {
    emit(state.copyWith(status: StateStatus.unknown, currentIndex: index));
  }

  void addTab() {
    var tabs = List.of(state.drivers);
    tabs.add(const IndexedDriverModel());
    emit(state.copyWith(status: StateStatus.unknown, drivers: tabs));
  }

  void removeTab(int index) {
    var tabs = List.of(state.drivers);
    int count = tabs.length;
    if (count == 1) {
      return;
    }
    int current = index == 0 ? 0 : (index - 1);
    tabs.removeAt(index);
    emit(state.copyWith(
        status: StateStatus.unknown, drivers: tabs, currentIndex: current));
  }

  void addDriverData({required int index, required IndexedDriverModel model}) {
    var tabs = List.of(state.drivers);
    tabs[index] = model;
    emit(state.copyWith(status: StateStatus.unknown, drivers: tabs));
  }
}
