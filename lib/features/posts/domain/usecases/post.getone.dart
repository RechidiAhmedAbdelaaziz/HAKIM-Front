import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/posts/domain/repositories/post.dart';

import '../entites/post.dart';

class GetPostUseCase implements UseCase<Post, String> {
  final PostRepository _repository;

  GetPostUseCase(this._repository);

  @override
  Future<ApiResult<Post>> call(String id) async =>
      await _repository.getPost(id);
}
