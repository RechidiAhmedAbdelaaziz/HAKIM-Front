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

ElementIdResponse _$ElementIdResponseFromJson(Map<String, dynamic> json) =>
    ElementIdResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] as String?,
      code: json['code'] as int?,
    );

Map<String, dynamic> _$ElementIdResponseToJson(ElementIdResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };
