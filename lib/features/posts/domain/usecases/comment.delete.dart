// ignore_for_file: avoid_renaming_method_parameters

import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../entites/comment.dart';
import '../repositories/comment.dart';

class DeleteCommentUseCase extends UseCaseWithParams<bool, Comment> {
  late final CommentRepository _repository;

  @override
  Future<ApiResult<bool>> call(Comment comment) async {
    return await _repository.deleteComment(comment.toModel());
  }
}
