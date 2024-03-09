// ignore_for_file: library_private_types_in_public_api

import 'package:json_annotation/json_annotation.dart';

part 'res.model.g.dart';

abstract class ResponseModel<T> {
  final bool? status;
  final String? message;
  final String? token;
  final Pagination? pagination;
  final T? data;
  final int? code;

  ResponseModel(
      {required this.status,
      this.token,
      this.pagination,
      this.message,
      this.data,
      required this.code});
}

@JsonSerializable()
class Pagination {
  Pagination(
      {required this.currentPage,
      required this.pagesNumber,
      required this.length,
      required this.previous,
      required this.next});

  final int? currentPage;
  final int? pagesNumber;
  final int? length;
  final int? previous;
  final int? next;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}

@JsonSerializable()
class ElementIdResponse extends ResponseModel<String> {
  ElementIdResponse(
      {required super.status,
      required super.message,
      super.data,
      required super.code});

  factory ElementIdResponse.fromJson(Map<String, dynamic> json) =>
      _$ElementIdResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ElementIdResponseToJson(this);
}
