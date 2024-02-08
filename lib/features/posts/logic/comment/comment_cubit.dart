import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:front/core/networking/error.handler.dart';
import 'package:front/features/posts/data/repositories/comment.imp.dart';
import 'package:front/features/posts/domain/entites/comment.dart';

part 'comment_state.dart';
part 'comment_cubit.freezed.dart';

class CommentCubit extends Cubit<CommentState> {
  final CommentRepositoryImp _repo;
  CommentCubit(this._repo, {required Comment comment})
      : _comment = comment,
        super(const CommentState.initial());

  final Comment _comment;

  void create() {
    _loading();
    _repo.createComment(_comment).then((_loaded)).catchError(_error);
  }

  void delete() {
    _loading();
    _repo.deleteComment(_comment.id).then((_loaded)).catchError(_error);
  }

  void _loading() => emit(const CommentState.loading());
  void _loaded(_) => emit(CommentState.loaded(_comment));
  void _error(e) => emit(CommentState.error(ErrorHandler.handle(e)));
}
