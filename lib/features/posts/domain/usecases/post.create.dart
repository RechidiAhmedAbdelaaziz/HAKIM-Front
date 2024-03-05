import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/posts/domain/entites/post.dart';

import '../repositories/post.dart';

class CreatePostUseCase implements UseCase<Post, Post> {
  final PostRepository _repository;

  CreatePostUseCase(this._repository);

  @override
  Future<ApiResult<Post>> call(Post params) async {
    return await _repository.createPost(params.toModel());
  }
}
