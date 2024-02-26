// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostModel _$PostModelFromJson(Map<String, dynamic> json) => PostModel(
      id: json['_id'] as String?,
      text: json['text'] as String?,
      poster: json['poster'] as String?,
      likers: json['likers'] as int?,
      comments: json['comments'] as int?,
      date: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$PostModelToJson(PostModel instance) => <String, dynamic>{
      '_id': instance.id,
      'text': instance.text,
      'poster': instance.poster,
      'likers': instance.likers,
      'comments': instance.comments,
      'createdAt': instance.date?.toIso8601String(),
    };
