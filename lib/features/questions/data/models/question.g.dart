// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) =>
    QuestionModel(
      id: json['_id'] as String?,
      text: json['text'] as String?,
      questioner: json['questioner'] == null
          ? null
          : AuthModel.fromJson(json['questioner'] as Map<String, dynamic>),
      date: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$QuestionModelToJson(QuestionModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'text': instance.text,
      'questioner': instance.questioner,
      'createdAt': instance.date?.toIso8601String(),
    };
