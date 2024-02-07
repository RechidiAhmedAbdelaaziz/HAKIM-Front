// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) => CommentModel(
      comment: json['comment'] as String,
      commentator: json['commentator'] as String,
      post: json['post'] as String,
      replys:
          (json['replys'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'comment': instance.comment,
      'commentator': instance.commentator,
      'post': instance.post,
      'replys': instance.replys,
    };
