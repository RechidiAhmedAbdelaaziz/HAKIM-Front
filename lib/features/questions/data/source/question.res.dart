import 'package:front/core/networking/res.model.dart';
import 'package:front/features/questions/data/models/question.dart';
import 'package:json_annotation/json_annotation.dart';

part 'question.res.g.dart';

@JsonSerializable()
class QuestionResponse extends ResponseModel<QuestionModel> {
  QuestionResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory QuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionResponseToJson(this);
}

@JsonSerializable()
class QuestionIdResponse extends ResponseModel<String> {
  QuestionIdResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory QuestionIdResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionIdResponseFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionIdResponseToJson(this);
}

@JsonSerializable()
class QuestionListResponse extends ResponseModel<List<QuestionModel>> {
  QuestionListResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory QuestionListResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionListResponseToJson(this);
}
