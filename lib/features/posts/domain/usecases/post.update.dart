// ignore_for_file: avoid_renaming_method_parameters

import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../entites/post.dart';
import '../repositories/post.dart';

class UpdatePostUseCase extends UseCase<Post, Post> {
  final PostRepository _repository;

  UpdatePostUseCase(this._repository);

  @override
  Future<ApiResult<Post>> call(Post post) {
    return _repository.updatePost(post.toModel());
  }
}
