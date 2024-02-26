import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'question.g.dart';

@JsonSerializable()
class QuestionModel extends Equatable {
  const QuestionModel({
    required this.id,
    required this.text,
    required this.questioner,
    required this.date,
  });

  @JsonKey(name: '_id')
  final String? id;
  final String? text;
  final String? questioner;
  @JsonKey(name: 'createdAt')
  final DateTime? date;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionModelToJson(this);

  @override
  String toString() {
    return "$id, $text, $questioner, $date, ";
  }

  @override
  List<Object?> get props => [id];
}
