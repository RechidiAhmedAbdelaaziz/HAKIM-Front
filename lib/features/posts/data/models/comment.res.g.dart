// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentResponse _$CommentResponseFromJson(Map<String, dynamic> json) =>
    CommentResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CommentModel.fromJson(json['data'] as Map<String, dynamic>),
      code: json['code'] as int?,
    );

Map<String, dynamic> _$CommentResponseToJson(CommentResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };
