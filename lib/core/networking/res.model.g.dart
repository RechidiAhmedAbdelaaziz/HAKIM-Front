// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      currentPage: json['currentPage'] as int?,
      pagesNumber: json['pagesNumber'] as int?,
      length: json['length'] as int?,
      previous: json['previous'] as int?,
      next: json['next'] as int?,
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'pagesNumber': instance.pagesNumber,
      'length': instance.length,
      'previous': instance.previous,
      'next': instance.next,
    };

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
