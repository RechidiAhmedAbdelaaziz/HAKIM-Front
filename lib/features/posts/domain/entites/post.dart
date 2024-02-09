// ignore_for_file: must_be_immutable

import 'package:front/features/auth/domain/enitities/doctor.dart';
import 'package:front/features/auth/domain/enitities/user.dart';
import 'package:front/features/posts/data/models/post.dart';

import '../../post.dart';
import 'comment.dart';

class Post extends IPost {
  final Doctor poster;
  List<Comment> comments;

  Post({
    required super.post,
    required this.poster,
    super.likers = const [],
    this.comments = const [],
    required super.date,
    required super.id,
  });

  factory Post.fromModel(PostModel model) => Post(
        post: model.post,
        poster: getDrById(model.poster!),
        date: model.date,
        id: model.id,
        comments: [], //TODO: create getComments of Post function
        likers: model.likers,
      );
  PostModel toModel() => PostModel(
      id: id,
      post: post,
      poster: poster.id,
      likers: likers,
      comments: comments.map((e) => e.id).toList(),
      date: date);

  @override
  List<Object?> get props => [id];
}

Post getPostById(String id) => Post(
      id: "",
      post: "",
      poster: getDrById(id),
      date: DateTime.now(),
    );
