part of 'faq_cubit.dart';

@freezed
class FaqState with _$FaqState {
  const factory FaqState.loading() = _Loading;
  const factory FaqState.error(Failure failure) = _Error;
  const factory FaqState.loaded(List<QuestionAnswer> data) = _Loaded;
}
