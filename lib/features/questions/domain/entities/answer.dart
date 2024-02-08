import 'package:equatable/equatable.dart';
import 'package:front/features/auth/data/model/user.dart';
import 'package:front/features/questions/data/models/answer.dart';
import 'package:front/features/questions/domain/entities/question.dart';

class Answer extends Equatable {
  const Answer({
    required this.id,
    required this.question,
    required this.answer,
    required this.respondent,
  });

  final String id;
  final Question question;
  final String answer;
  final Patient respondent;

  Answer copyWith({
    String? answer,
  }) {
    return Answer(
      id: id,
      question: question,
      answer: answer ?? this.answer,
      respondent: respondent,
    );
  }

  AnswerModel toModel() => AnswerModel(
        id: id,
        question: question.id,
        answer: answer,
        respondent: respondent.id,
      );

  factory Answer.fromModel(AnswerModel model) => Answer(
        id: model.id,
        question: getQuestionById(model.question),
        answer: model.answer,
        respondent: getUserById(model.respondent),
      );

  @override
  List<Object?> get props => [
        id,
        question,
        answer,
        respondent,
      ];
}

getQuestionById(id) =>
    Question(id: id, question: "", questioner: getUserById(id));
