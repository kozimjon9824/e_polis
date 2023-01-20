// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HelpData _$$_HelpDataFromJson(Map<String, dynamic> json) => _$_HelpData(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => QuestionAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HelpDataToJson(_$_HelpData instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_QuestionAnswer _$$_QuestionAnswerFromJson(Map<String, dynamic> json) =>
    _$_QuestionAnswer(
      question: json['question'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$_QuestionAnswerToJson(_$_QuestionAnswer instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
    };
