// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:front/core/usecase/byidgetter.dart';
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

  static Future<Comment> fromModle(CommentModel model) async {
    final commentator = await ByIdGetter(id: model.commentator!).user();

    return Comment(
        text: model.text,
        commentator: commentator,
        id: model.id,
        date: model.date);
  }

  CommentModel toModel() => CommentModel(
        text: text,
        commentator: commentator?.id,
        id: id,
        date: date,
      );

  @override
  List<Object?> get props => [id];
}
