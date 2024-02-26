import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'answer.g.dart';

@JsonSerializable()
class AnswerModel extends Equatable {
  const AnswerModel({
    required this.id,
    required this.text,
    required this.respondent,
    required this.date,
  });

  @JsonKey(name: '_id')
  final String? id;
  final String? text;
  final String? respondent;
  @JsonKey(name: 'createdAt')
  final DateTime? date;

  factory AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnswerModelToJson(this);

  @override
  String toString() => "$id, $text, $respondent, $date, ";

  @override
  List<Object?> get props => [id];
}
