import 'package:equatable/equatable.dart';
import 'package:front/core/usecase/byidgetter.dart';
import 'package:front/features/auth/domain/enitities/doctor.dart';
import 'package:front/features/posts/data/models/post.dart';

class Post extends Equatable {
  const Post({
    required this.id,
    required this.text,
    required this.poster,
    required this.likers,
    required this.comments,
    required this.date,
  });

  final String? id;
  final String? text;
  final Doctor? poster;
  final int? likers;
  final int? comments;
  final DateTime? date;

  static Future<Post> fromModel(PostModel model) async {
    final poster = await ByIdGetter(id: model.id!).user() as Doctor?;
    return Post(
      id: model.id,
      text: model.text,
      poster: poster,
      likers: model.likers,
      comments: model.comments,
      date: model.date,
    );
  }

  PostModel toModel() => PostModel(
        id: id,
        text: text,
        poster: poster?.id,
        likers: likers,
        comments: comments,
        date: date,
      );

  Post copyWith({
    String? id,
    String? text,
    Doctor? poster,
    int? likers,
    int? comments,
    DateTime? date,
  }) {
    return Post(
      id: id ?? this.id,
      text: text ?? this.text,
      poster: poster ?? this.poster,
      likers: likers ?? this.likers,
      comments: comments ?? this.comments,
      date: date ?? this.date,
    );
  }

  @override
  List<Object?> get props => [id];
}
