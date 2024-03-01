import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:front/core/networking/error.handler.dart';
import 'package:front/features/posts/domain/entites/post.dart';
import 'package:front/features/posts/domain/usecases/index.dart';

part 'post_state.dart';
part 'post_cubit.freezed.dart';

class PostCubit extends Cubit<PostState> {
  final PostUseCases _usecases;
  PostCubit(this._usecases) : super(const PostState.initial());

  late final Post _post;
  Post get post => _post;
  set setPost(Post x) => _post = x;

  void delete() async {
    _loading();
    final response = await _usecases.delete(_post);
    response.when(sucess: _loaded, failure: _error);
  }

  void update() async {
    _loading();
    final response = await _usecases.update(_post);
    response.when(sucess: _loaded, failure: _error);
  }

  void create() async {
    _loading();
    final response = await _usecases.create(_post);
    response.when(sucess: _loaded, failure: _error);
  }

  void _loading() => emit(const PostState.loading());
  void _loaded(_) => emit(PostState.loaded(_post));
  void _error(ErrorHandler e) => emit(PostState.error(e));
}
