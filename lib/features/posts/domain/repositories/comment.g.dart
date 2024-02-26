// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentRequestBody _$CommentRequestBodyFromJson(Map<String, dynamic> json) =>
    CommentRequestBody(
      text: json['text'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$CommentRequestBodyToJson(CommentRequestBody instance) =>
    <String, dynamic>{
      'text': instance.text,
      'id': instance.id,
    };
