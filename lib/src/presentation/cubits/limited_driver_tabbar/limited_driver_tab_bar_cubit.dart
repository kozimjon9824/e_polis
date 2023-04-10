import 'package:e_polis/src/core/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/utils/helper_models.dart';

part 'limited_driver_tab_bar_state.dart';

part 'limited_driver_tab_bar_cubit.freezed.dart';

class LimitedDriverTabBarCubit extends Cubit<LimitedDriverTabBarState> {
  LimitedDriverTabBarCubit()
      : super(LimitedDriverTabBarState(drivers: [IndexedDriverModel()]));

  void changeTab(int index) {
    emit(state.copyWith(status: StateStatus.unknown, currentIndex: index));
  }

  void addTab() {
    var tabs = List.of(state.drivers);
    int count = tabs.length;
    if (count == 5 || !isAllCompleted()) {
      return;
    }
    tabs.add(IndexedDriverModel());
    emit(
      state.copyWith(
          status: StateStatus.unknown,
          drivers: tabs,
          currentIndex: state.currentIndex + 1),
    );
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

  void addDriverData({
    required int index,
    required IndexedDriverModel model,
  }) {
    var tabs = List.of(state.drivers);
    IndexedDriverModel newModel = tabs[index];
    var withRelative =
        model.driverModel?.copyWith(relative: newModel.relativeKey);
    model.driverModel = withRelative;
    model.relativeSelected = newModel.relativeSelected;
    tabs[index] = model;
    emit(state.copyWith(status: StateStatus.unknown, drivers: tabs));
  }

  void selectDriverRelationShip({
    required int index,
    required int relativeKey,
  }) {
    List<IndexedDriverModel> tabs = List.of(state.drivers);
    IndexedDriverModel newModel = tabs[index];
    var withRelative = newModel.driverModel?.copyWith(relative: relativeKey);
    newModel.driverModel = withRelative;
    newModel.relativeKey = relativeKey;
    tabs[index] = newModel;
    emit(state.copyWith(status: StateStatus.unknown, drivers: tabs));
  }

  bool isAllCompleted() {
    var tabs = List.of(state.drivers);
    return !tabs.any(
      (element) => (element.isSuccess == false || element.isSuccess == null),
    );
  }
}
