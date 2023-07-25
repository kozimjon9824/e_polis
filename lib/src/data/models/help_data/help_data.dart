import 'package:freezed_annotation/freezed_annotation.dart';

part 'help_data.freezed.dart';

part 'help_data.g.dart';

@freezed
class HelpData with _$HelpData {
  const factory HelpData({
    List<QuestionAnswer>? data,
    String? websiteUrl,
    String? email,
    String? phoneNumber,
    String? telegramUrl,
  }) = _HelpData;

  factory HelpData.fromJson(Map<String, dynamic> json) =>
      _$HelpDataFromJson(json);
}

@freezed
class QuestionAnswer with _$QuestionAnswer {
  const factory QuestionAnswer({
    String? question,
    String? answer,
  }) = _QuestionAnswer;

  factory QuestionAnswer.fromJson(Map<String, dynamic> json) =>
      _$QuestionAnswerFromJson(json);
}
