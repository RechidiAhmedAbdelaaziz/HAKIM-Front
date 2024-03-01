export 'like.create.dart';
export 'like.delete.dart';
export 'comment.delete.dart';
export 'comment.getall.dart';
export 'comment.getone.dart';
export 'comment.update.dart';
export 'comment.create.dart';
export 'post.create.dart';
export 'post.delete.dart';
export 'post.getall.dart';
export 'post.getmypost.dart';
export 'post.getone.dart';
export 'post.getuserpost.dart';
export 'post.update.dart';

import 'like.create.dart';
import 'like.delete.dart';
import 'comment.delete.dart';
import 'comment.getall.dart';
import 'comment.getone.dart';
import 'comment.update.dart';
import 'comment.create.dart';
import 'post.create.dart';
import 'post.delete.dart';
import 'post.getall.dart';
import 'post.getmypost.dart';
import 'post.getone.dart';
import 'post.getuserpost.dart';
import 'post.update.dart';

class PostUseCases {
  PostUseCases({
    required this.create,
    required this.update,
    required this.delete,
    required this.getAll,
    required this.getMy,
    required this.getUser,
    required this.getOne,
    required this.like,
    required this.unLike,
  });

  final CreatePostUseCase create;
  final UpdatePostUseCase update;
  final DeletePostUseCase delete;
  final GetAllPostsUseCase getAll;
  final GetMyPostsUseCase getMy;
  final GetUserPostsUseCase getUser;
  final GetPostUseCase getOne;
  final LikePostUseCase like;
  final UnLikePostUseCase unLike;
}

class CommentUseCases {
  CommentUseCases({
    required this.create,
    required this.update,
    required this.delete,
    required this.getAll,
    required this.getOne,
  });

  final CreateCommentUseCase create;
  final UpdateCommentUseCase update;
  final DeleteCommentUseCase delete;
  final GetAllCommentsUseCase getAll;
  final GetOneCommentUseCase getOne;
}
