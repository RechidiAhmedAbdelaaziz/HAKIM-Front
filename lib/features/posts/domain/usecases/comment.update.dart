import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../entites/comment.dart';
import '../repositories/comment.dart';

class UpdateCommentUseCase extends UseCaseWithParams<Comment, Comment> {
  final CommentRepository _repository;

  UpdateCommentUseCase(this._repository);

  @override
  Future<ApiResult<Comment>> call(Comment params) async {
    final comment = params.toModel();
    return await _repository.updateComment(comment);
  }
}
