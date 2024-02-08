// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:front/features/auth/data/model/user.dart';
import 'package:front/features/posts/data/models/comment.dart';
import 'package:front/features/posts/domain/entites/post.dart';

class Comment extends Equatable {
  String comment;
  final User commentator;
  final Post post;
  List<Comment> replys;
  final String id;

  Comment({
    required this.comment,
    required this.commentator,
    required this.post,
    this.replys = const [],
    required this.id,
  });

  factory Comment.fromModle(CommentModel model) => Comment(
      comment: model.comment,
      commentator: getUserById(model.commentator),
      post: getPostById(model.post),
      id: model.id);

  CommentModel toModel() => CommentModel(
        comment: comment,
        commentator: commentator.id,
        post: post.id,
        replys: replys.map((e) => e.id).toList(),
        id: id,
      );

  @override
  List<Object?> get props => [id];
}
