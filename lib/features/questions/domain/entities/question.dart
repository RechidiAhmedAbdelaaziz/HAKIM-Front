import 'package:equatable/equatable.dart';
import 'package:front/features/auth/data/model/user.dart';

class Question extends Equatable {
    const Question({
        required this.id,
        required this.question,
        required this.questioner,
        required this.answers,
    });

    final String? id;
    final String? question;
    final User questioner;
    final List<String> answers;

    Question copyWith({
        String? id,
        String? question,
        String? questioner,
        List<String>? answers,
    }) {
        return Question(
            id: id ?? this.id,
            question: question ?? this.question,
            questioner: questioner ?? this.questioner,
            answers: answers ?? this.answers,
        );
    }

    factory Question.fromJson(Map<String, dynamic> json){ 
        return Question(
            id: json["_id"],
            question: json["question"],
            questioner: json["questioner"],
            answers: json["answers"] == null ? [] : List<String>.from(json["answers"]!.map((x) => x)),
        );
    }

    @override
    List<Object?> get props => [
    id, question, questioner, answers, ];
}
