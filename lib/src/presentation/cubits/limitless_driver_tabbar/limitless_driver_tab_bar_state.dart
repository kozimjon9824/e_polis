part of 'limitless_driver_tab_bar_cubit.dart';

@freezed
class LimitlessDriverTabBarState with _$LimitlessDriverTabBarState {
  const factory LimitlessDriverTabBarState(
          {@Default(StateStatus.unknown) StateStatus status,
          @Default(0) int currentIndex,
          @Default([]) List<IndexedDriverModel> drivers}) =
      _LimitlessDriverTabBarState;
}
