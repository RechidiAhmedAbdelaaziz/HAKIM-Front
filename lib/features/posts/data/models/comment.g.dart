// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) => CommentModel(
      post: json['post'] as String?,
      id: json['_id'] as String?,
      text: json['text'] as String?,
      commentator: json['commentator'] == null
          ? null
          : AuthModel.fromJson(json['commentator'] as Map<String, dynamic>),
      date: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'text': instance.text,
      'post': instance.post,
      'commentator': instance.commentator,
      'createdAt': instance.date?.toIso8601String(),
    };
