// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostResponse _$PostResponseFromJson(Map<String, dynamic> json) => PostResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PostModel.fromJson(json['data'] as Map<String, dynamic>),
      code: json['code'] as int?,
    );

Map<String, dynamic> _$PostResponseToJson(PostResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

PostListResponse _$PostListResponseFromJson(Map<String, dynamic> json) =>
    PostListResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as int?,
    );

Map<String, dynamic> _$PostListResponseToJson(PostListResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };
