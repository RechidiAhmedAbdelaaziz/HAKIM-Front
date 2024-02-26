// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) => CommentModel(
      id: json['_id'] as String?,
      text: json['text'] as String?,
      commentator: json['commentator'] as String?,
      post: json['post'] as String?,
      date: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'text': instance.text,
      'commentator': instance.commentator,
      'post': instance.post,
      'createdAt': instance.date?.toIso8601String(),
    };
