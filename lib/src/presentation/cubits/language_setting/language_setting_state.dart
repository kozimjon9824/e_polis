part of 'language_setting_cubit.dart';

@freezed
class LanguageSettingState with _$LanguageSettingState {
  const factory LanguageSettingState.load(String language) = _Load;
  const factory LanguageSettingState.success() = _Success;
  const factory LanguageSettingState.error(Failure failure) = _Error;
}
