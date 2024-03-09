import 'package:equatable/equatable.dart';
import 'package:front/core/usecase/get.user.dart';
import 'package:front/features/auth/domain/enitities/user.dart';
import 'package:front/features/questions/data/models/question.dart';

class Question extends Equatable {
  const Question({
    required this.id,
    required this.text,
    required this.questioner,
    required this.date,
  });

  final String? id;
  final String? text;
  final User? questioner;
  final DateTime? date;

  factory Question.fromModel(QuestionModel? model) {
    return Question(
        id: model?.id,
        text: model?.text,
        questioner: GetUserFromModel.call(model?.questioner),
        date: model?.date);
  }

  QuestionModel toModel() => QuestionModel(
        id: id,
        text: text,
        questioner: questioner?.toModel(),
        date: date,
      );

  Question copyWith({
    String? id,
    String? text,
    User? questioner,
    DateTime? date,
  }) {
    return Question(
      id: id ?? this.id,
      text: text ?? this.text,
      questioner: questioner ?? this.questioner,
      date: date ?? this.date,
    );
  }

  @override
  List<Object?> get props => [
        id,
        text,
        questioner,
        date,
      ];
}
