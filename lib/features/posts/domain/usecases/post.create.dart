import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/posts/domain/entites/post.dart';

import '../repositories/post.dart';

class CreatePostUseCase implements UseCaseWithParams<Post, Post> {
  final PostRepository _repository;

  CreatePostUseCase(this._repository);

  @override
  Future<ApiResult<Post>> call(Post params) async {
    final post = PostRequestBody(text: params.text!, id: params.id);
    return await _repository.createPost(post);
  }
}
