import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:front/core/networking/error.handler.dart';
import 'package:front/features/posts/domain/entites/comment.dart';
import 'package:front/features/posts/domain/usecases/index.dart';

part 'comment_state.dart';
part 'comment_cubit.freezed.dart';

class CommentCubit extends Cubit<CommentState> {
  final CommentUseCases _useCases;
  CommentCubit(this._useCases, {required Comment comment})
      : _comment = comment,
        super(const CommentState.initial());

  final Comment _comment;

  Future<void> create() async {
    _loading();
    final response = await _useCases.create(_comment);
    response.when(sucess: _loaded, failure: _error);
  }

  Future<void> delete() async {
    _loading();
    final response = await _useCases.delete(_comment);
    response.when(sucess: _loaded, failure: _error);
  }

  void _loading() => emit(const CommentState.loading());
  void _loaded(_) => emit(CommentState.loaded(_comment));
  void _error(ErrorHandler e) => emit(CommentState.error(e));
}
