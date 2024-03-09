import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/posts/domain/repositories/post.dart';

import '../entites/post.dart';

class GetUserPostParams {
  final int page;
  final String id;

  GetUserPostParams({required this.page, required this.id});
}

class GetUserPostsUseCase implements UseCase<List<Post>, GetUserPostParams> {
  final PostRepository _repository;

  GetUserPostsUseCase(this._repository);

  @override
  Future<ApiResult<List<Post>>> call(GetUserPostParams info) async =>
      await _repository.getUserPosts(info.id, info.page);
}
