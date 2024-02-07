// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultResponse _$DefaultResponseFromJson(Map<String, dynamic> json) =>
    DefaultResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'],
      code: json['code'] as int?,
    );

Map<String, dynamic> _$DefaultResponseToJson(DefaultResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };
