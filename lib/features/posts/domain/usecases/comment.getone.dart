// ignore_for_file: avoid_renaming_method_parameters

import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../entites/comment.dart';
import '../repositories/comment.dart';

class GetOneCommentUseCase extends UseCase<Comment, String> {
  final CommentRepository _repository;

  GetOneCommentUseCase(this._repository);

  @override
  Future<ApiResult<Comment>> call(String id) async {
    return await _repository.getComment(id);
  }
}
