import 'package:front/core/networking/api.result.dart';

import '../entites/comment.dart';

abstract class CommentRepository {
  Future<ApiResult> createComment(Comment comment);
  Future<ApiResult> deleteComment(String id);
}
