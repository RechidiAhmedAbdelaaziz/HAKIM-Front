// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:front/features/auth/domain/enitities/doctor.dart';
import 'package:front/features/auth/domain/enitities/patient.dart';
import 'package:front/features/auth/domain/enitities/user.dart';
import 'package:front/features/posts/data/models/comment.dart';

class Comment extends Equatable {
  final String? text;
  final User? commentator;
  final DateTime? date;
  final String? id;

  const Comment({
    required this.date,
    required this.text,
    required this.commentator,
    required this.id,
  });

  factory Comment.fromModel(CommentModel? model) {
    final User? commentator;
    if (model?.commentator?.kind == "Doctor") {
      commentator = Doctor.fromModel(model?.commentator);
    } else {
      commentator = Patient.fromModel(model?.commentator);
    }

    return Comment(
      text: model?.text,
      commentator: commentator,
      id: model?.id,
      date: model?.date,
    );
  }

  CommentModel toModel() => CommentModel(
        text: text,
        commentator: commentator?.toModel(),
        id: id,
        date: date,
      );

  @override
  List<Object?> get props => [id];
}
