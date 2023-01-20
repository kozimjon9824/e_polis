part of 'language_cubit.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState.loaded(String language) = _Loaded;
  const factory LanguageState.error(Failure failure) = _Error;
  const factory LanguageState.loading() = _Loading;
}
