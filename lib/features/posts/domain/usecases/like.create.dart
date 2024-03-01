import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/posts/domain/entites/post.dart';

import '../repositories/post.dart';

class LikePostUseCase extends UseCaseWithParams<bool, Post> {
  final PostRepository _repository;

  LikePostUseCase(this._repository);

  @override
  Future<ApiResult<bool>> call(Post params) async {
    return await _repository.like(params.toModel());
  }
}
