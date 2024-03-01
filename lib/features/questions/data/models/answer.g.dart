// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnswerModel _$AnswerModelFromJson(Map<String, dynamic> json) => AnswerModel(
      id: json['_id'] as String?,
      text: json['text'] as String?,
      respondent: json['respondent'] as String?,
      date: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$AnswerModelToJson(AnswerModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'text': instance.text,
      'respondent': instance.respondent,
      'createdAt': instance.date?.toIso8601String(),
    };
