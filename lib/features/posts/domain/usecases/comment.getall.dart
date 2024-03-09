import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../entites/comment.dart';
import '../repositories/comment.dart';

class GetCommentsParams {
  final int page;
  final String postid;

  const GetCommentsParams({required this.page, required this.postid});
}

class GetAllCommentsUseCase extends UseCase<List<Comment>, GetCommentsParams> {
  final CommentRepository _repository;

  GetAllCommentsUseCase(this._repository);

  @override
  Future<ApiResult<List<Comment>>> call(GetCommentsParams params) async {
    final id = params.postid;
    final page = params.page;
    return await _repository.getPostComments(id, page);
  }
}
