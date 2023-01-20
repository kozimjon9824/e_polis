part of 'main_screen_data_cubit.dart';

@freezed
class MainScreenDataState with _$MainScreenDataState {
  const factory MainScreenDataState.initial() = _Initial;
  const factory MainScreenDataState.loading() = _Loading;
  const factory MainScreenDataState.loaded(MainScreenData? data) = _Loaded;
  const factory MainScreenDataState.error(Failure? failure) = _Error;
}
