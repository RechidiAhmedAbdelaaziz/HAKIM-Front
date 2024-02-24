// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) => AuthResponse(
      status: json['status'] as bool?,
      token: json['token'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : AuthModel.fromJson(json['data'] as Map<String, dynamic>),
      code: json['code'] as int?,
    );

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
      'data': instance.data,
      'code': instance.code,
    };

AuthListResponse _$AuthListResponseFromJson(Map<String, dynamic> json) =>
    AuthListResponse(
      status: json['status'] as bool?,
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AuthModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as int?,
    );

Map<String, dynamic> _$AuthListResponseToJson(AuthListResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'pagination': instance.pagination,
      'data': instance.data,
      'code': instance.code,
    };
