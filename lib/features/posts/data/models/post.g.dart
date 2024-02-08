// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostModel _$PostModelFromJson(Map<String, dynamic> json) => PostModel(
      id: json['id'] as String,
      post: json['post'] as String,
      poster: json['poster'] as String?,
      likers:
          (json['likers'] as List<dynamic>).map((e) => e as String).toList(),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$PostModelToJson(PostModel instance) => <String, dynamic>{
      'id': instance.id,
      'likers': instance.likers,
      'date': instance.date.toIso8601String(),
      'post': instance.post,
      'poster': instance.poster,
      'comments': instance.comments,
    };
