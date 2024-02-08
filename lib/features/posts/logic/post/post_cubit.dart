import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:front/core/networking/error.handler.dart';
import 'package:front/features/posts/domain/entites/post.dart';
import 'package:front/features/posts/domain/repositories/post.dart';

part 'post_state.dart';
part 'post_cubit.freezed.dart';

class PostCubit extends Cubit<PostState> {
  final PostRepository _repo;
  PostCubit(this._repo) : super(const PostState.initial());

  late final Post _post;
  Post get post => _post;
  set setPost(Post x) => _post = x;

  void delete() {
    _loading();
    _repo.deletePost(_post.id).then(_loaded).catchError(_error);
  }

  void update() {
    _loading();
    _repo.updatePost(_post).then(_loaded).catchError(_error);
  }

  void create() async {
    _loading();
    _repo.createPost(_post).then(_loaded).catchError(_error);
  }

  void _loading() => emit(const PostState.loading());
  void _loaded(_) => emit(PostState.loaded(_post));
  void _error(e) => emit(PostState.error(ErrorHandler.handle(e)));
}
