import 'package:equatable/equatable.dart';
import 'package:front/core/usecase/byidgetter.dart';
import 'package:front/features/auth/domain/enitities/user.dart';
import 'package:front/features/questions/data/models/answer.dart';

class Answer extends Equatable {
  const Answer({
    required this.id,
    required this.text,
    required this.respondent,
    required this.date,
  });

  final String? id;
  final String? text;
  final User? respondent;
  final DateTime? date;

  static Future<Answer> fromModel(AnswerModel model) async {
    final respondent = await ByIdGetter(id: model.id!).user();
    return Answer(
        id: model.id,
        text: model.text,
        respondent: respondent,
        date: model.date);
  }

  AnswerModel toModel() => AnswerModel(
        id: id,
        text: text,
        respondent: respondent?.id,
        date: date,
      );

  Answer copyWith({
    String? id,
    String? text,
    User? respondent,
    DateTime? date,
  }) {
    return Answer(
      id: id ?? this.id,
      text: text ?? this.text,
      respondent: respondent ?? this.respondent,
      date: date ?? this.date,
    );
  }

  @override
  List<Object?> get props => [id];
}
