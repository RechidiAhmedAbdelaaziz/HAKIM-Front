import 'package:equatable/equatable.dart';
import 'package:front/features/auth/data/model/user.dart';
import 'package:front/features/questions/data/models/question.dart';
import 'package:front/features/questions/domain/entities/answer.dart';

class Question extends Equatable {
  const Question({
    required this.id,
    required this.question,
    required this.questioner,
    this.answers = const [],
  });

  final String id;
  final String question;
  final Patient questioner;
  final List<Answer> answers;

  Question copyWith({
    String? question,
    List<Answer>? answers,
  }) {
    return Question(
      id: id,
      question: question ?? this.question,
      questioner: questioner,
      answers: answers ?? this.answers,
    );
  }

  factory Question.fromModel(QuestionModel model) => Question(
        id: model.id,
        question: model.question,
        questioner: getUserById(model.questioner),
        //TODO: add answers
      );

  QuestionModel toModel() => QuestionModel(
        id: id,
        question: question,
        questioner: questioner.id,
        answers: answers.map((e) => e.id).toList(),
      );

  @override
  List<Object?> get props => [
        id,
        question,
        questioner,
        answers,
      ];
}
