part of 'language_cubit.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState(
      {String? language,
      @Default(StateStatus.unknown) StateStatus status,
      @Default(UnknownFailure()) Failure failure}) = _LanguageState;
}
