part of 'limited_driver_tab_bar_cubit.dart';

@freezed
class LimitedDriverTabBarState with _$LimitedDriverTabBarState {
  const factory LimitedDriverTabBarState(
          {@Default(StateStatus.unknown) StateStatus status,
          @Default(0) int currentIndex,
          @Default([IndexedDriverModel()]) List<IndexedDriverModel> drivers}) =
      _LimitedDriverTabBarState;
}
