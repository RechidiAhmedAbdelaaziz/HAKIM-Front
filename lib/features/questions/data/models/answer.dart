import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'answer.g.dart';

@JsonSerializable()
class AnswerModel extends Equatable {
  const AnswerModel({
    required this.id,
    required this.question,
    required this.answer,
    required this.respondent,
  });

  @JsonKey(name: '_id')
  final String id;
  final String question;
  final String answer;
  final String respondent;

  AnswerModel copyWith({
    String? id,
    String? question,
    String? answer,
    String? respondent,
  }) {
    return AnswerModel(
      id: id ?? this.id,
      question: question ?? this.question,
      answer: answer ?? this.answer,
      respondent: respondent ?? this.respondent,
    );
  }

  factory AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnswerModelToJson(this);

  @override
  String toString() {
    return "$id, $question, $answer, $respondent, ";
  }

  @override
  List<Object?> get props => [
        id,
        question,
        answer,
        respondent,
      ];
}
