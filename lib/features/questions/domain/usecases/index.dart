export 'answer.create.dart';
export 'answer.delete.dart';
export 'answer.getforquestion.dart';
export 'answer.update.dart';
export 'question.getall.dart';
export 'question.create.dart';
export 'question.delete.dart';
export 'question.update.dart';
import 'answer.create.dart';
import 'answer.delete.dart';
import 'answer.getforquestion.dart';
import 'answer.update.dart';
import 'question.getall.dart';
import 'question.create.dart';
import 'question.delete.dart';
import 'question.update.dart';

class AnswerUseCases {
  final CreateAnswerUseCase create;
  final UpdateAnswerUseCase update;
  final GetQuestionAnswersUseCase getAll;
  final DeleteAnswerUseCase delete;

  AnswerUseCases(
      {required this.create,
      required this.update,
      required this.getAll,
      required this.delete});
}

class QuestionUseCases {
  final CreateQuestionUseCase create;
  final UpdateQuestionUseCase update;
  final GetAllQuestionUseCase getAll;
  final DeleteQuestionUseCase delete;

  QuestionUseCases(
      {required this.create,
      required this.update,
      required this.getAll,
      required this.delete});
}
