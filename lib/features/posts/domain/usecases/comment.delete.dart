// ignore_for_file: avoid_renaming_method_parameters

import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/posts/domain/repositories/comment.dart';

class DeleteCommentUseCase extends UseCaseWithParams<bool, String> {
  late final CommentRepository _repository;

  @override
  Future<ApiResult<bool>> call(String id) async {
    return await _repository.deleteComment(id);
  }
}
