// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnswerModel _$AnswerModelFromJson(Map<String, dynamic> json) => AnswerModel(
      id: json['_id'] as String?,
      text: json['text'] as String?,
      respondent: json['respondent'] == null
          ? null
          : AuthModel.fromJson(json['respondent'] as Map<String, dynamic>),
      date: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      question: json['question'] as String?,
    );

Map<String, dynamic> _$AnswerModelToJson(AnswerModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'text': instance.text,
      'question': instance.question,
      'respondent': instance.respondent,
      'createdAt': instance.date?.toIso8601String(),
    };
