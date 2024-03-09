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
  final String? postId;

  const Comment({
    this.postId,
    required this.date,
    required this.text,
    required this.commentator,
    required this.id,
  });

  Comment copyWith({
    String? text,
    User? commentator,
    DateTime? date,
    String? id,
  }) {
    return Comment(
      postId: postId,
      text: text ?? this.text,
      commentator: commentator ?? this.commentator,
      date: date ?? this.date,
      id: id ?? this.id,
    );
  }

  factory Comment.fromModel(CommentModel? model) {
    final User? commentator;
    if (model?.commentator?.kind == "Doctor") {
      commentator = Doctor.fromModel(model?.commentator);
    } else {
      commentator = Patient.fromModel(model?.commentator);
    }

    return Comment(
      postId: model?.post,
      text: model?.text,
      commentator: commentator,
      id: model?.id,
      date: model?.date,
    );
  }

  CommentModel toModel() => CommentModel(
        post: postId,
        text: text,
        commentator: commentator?.toModel(),
        id: id,
        date: date,
      );

  @override
  List<Object?> get props => [id];
}
