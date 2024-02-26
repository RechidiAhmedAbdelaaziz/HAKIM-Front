import 'package:front/core/networking/res.model.dart';
import 'package:front/features/questions/data/models/answer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'answer.res.g.dart';

@JsonSerializable()
class AnswerResponse extends ResponseModel<AnswerModel> {
  AnswerResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory AnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$AnswerResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AnswerResponseToJson(this);
}

@JsonSerializable()
class AnswerListResponse extends ResponseModel<List<AnswerModel>> {
  AnswerListResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory AnswerListResponse.fromJson(Map<String, dynamic> json) =>
      _$AnswerListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AnswerListResponseToJson(this);
}
