import 'package:e_polis/src/core/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'limited_driver_tab_bar_state.dart';

part 'limited_driver_tab_bar_cubit.freezed.dart';

class LimitedDriverTabBarCubit extends Cubit<LimitedDriverTabBarState> {
  LimitedDriverTabBarCubit() : super(const LimitedDriverTabBarState());

  void changeTab(int index) {
    emit(state.copyWith(status: StateStatus.unknown, currentIndex: index));
  }

  void addTab() {
    Map<int, String> tabs = Map.from(state.tabCountMap);
    int count = tabs.length;
    tabs[count + 1] = '';
    emit(state.copyWith(status: StateStatus.unknown, tabCountMap: tabs));
  }

  void removeTab(int index) {
    if (index == 0) return;
    Map<int, String> tabs = Map.from(state.tabCountMap);
    tabs.remove(index);
    emit(state.copyWith(
        status: StateStatus.unknown,
        tabCountMap: tabs,
        currentIndex: index - 1));
  }
}
