import 'package:json_annotation/json_annotation.dart';

part 'res.model.g.dart';

abstract class ResponseModel<T> {
  final bool? status;
  final String? message;
  final T? data;
  final int? code;

  ResponseModel(
      {required this.status,
      required this.message,
      required this.data,
      required this.code});
}

@JsonSerializable()
class DefaultResponse extends ResponseModel {
  DefaultResponse(
      {required super.status,
      required super.message,
      super.data,
      required super.code});

  factory DefaultResponse.fromJson(Map<String, dynamic> json) =>
      _$DefaultResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DefaultResponseToJson(this);
}
