import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'question.g.dart';

@JsonSerializable()
class QuestionModel extends Equatable {
  const QuestionModel({
    required this.id,
    required this.question,
    required this.questioner,
    this.answers = const [],
  });

  @JsonKey(name: '_id')
  final String id;
  final String question;
  final String questioner;
  final List<String>? answers;

  QuestionModel copyWith({
    String? id,
    String? question,
    String? questioner,
    List<String>? answers,
  }) {
    return QuestionModel(
      id: id ?? this.id,
      question: question ?? this.question,
      questioner: questioner ?? this.questioner,
      answers: answers ?? this.answers,
    );
  }

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionModelToJson(this);

  @override
  String toString() {
    return "$id, $question, $questioner, $answers, ";
  }

  @override
  List<Object?> get props => [
        id,
        question,
        questioner,
        answers,
      ];
}
