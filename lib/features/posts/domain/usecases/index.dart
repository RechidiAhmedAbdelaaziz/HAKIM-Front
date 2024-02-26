// ignore_for_file: unused_field

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
  PostUseCases(
      {required CreatePostUseCase create,
      required UpdatePostUseCase update,
      required DeletePostUseCase delete,
      required GetAllPostsUseCase getAll,
      required GetMyPostsUseCase getMy,
      required GetUserPostsUseCase getUser,
      required GetPostUseCase getOne,
      required LikePostUseCase like,
      required UnLikePostUseCase unLike})
      : _create = create,
        _update = update,
        _delete = delete,
        _getAll = getAll,
        _getMy = getMy,
        _getUser = getUser,
        _getOne = getOne,
        _like = like,
        _unLike = unLike;

  final CreatePostUseCase _create;
  final UpdatePostUseCase _update;
  final DeletePostUseCase _delete;
  final GetAllPostsUseCase _getAll;
  final GetMyPostsUseCase _getMy;
  final GetUserPostsUseCase _getUser;
  final GetPostUseCase _getOne;

  final LikePostUseCase _like;
  final UnLikePostUseCase _unLike;
}

class CommentUseCases {
  CommentUseCases(
      {required CreateCommentUseCase create,
      required UpdateCommentUseCase update,
      required DeleteCommentUseCase delete,
      required GetAllCommentsUseCase getAll,
      required GetOneCommentUseCase getOne})
      : _create = create,
        _update = update,
        _delete = delete,
        _getAll = getAll,
        _getOne = getOne;

  final CreateCommentUseCase _create;
  final UpdateCommentUseCase _update;
  final DeleteCommentUseCase _delete;
  final GetAllCommentsUseCase _getAll;
  final GetOneCommentUseCase _getOne;
}
