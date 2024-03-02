import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/posts/domain/entites/post.dart';

import '../repositories/post.dart';

class DeletePostUseCase implements UseCase<bool, Post> {
  final PostRepository _repository;

  DeletePostUseCase(this._repository);

  @override
  Future<ApiResult<bool>> call(Post params) async {
    return await _repository.deletePost(params.toModel());
  }
}
