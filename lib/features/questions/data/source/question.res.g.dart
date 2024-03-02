// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionResponse _$QuestionResponseFromJson(Map<String, dynamic> json) =>
    QuestionResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : QuestionModel.fromJson(json['data'] as Map<String, dynamic>),
      code: json['code'] as int?,
    );

Map<String, dynamic> _$QuestionResponseToJson(QuestionResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

QuestionIdResponse _$QuestionIdResponseFromJson(Map<String, dynamic> json) =>
    QuestionIdResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] as String?,
      code: json['code'] as int?,
    );

Map<String, dynamic> _$QuestionIdResponseToJson(QuestionIdResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

QuestionListResponse _$QuestionListResponseFromJson(
        Map<String, dynamic> json) =>
    QuestionListResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as int?,
    );

Map<String, dynamic> _$QuestionListResponseToJson(
        QuestionListResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };
