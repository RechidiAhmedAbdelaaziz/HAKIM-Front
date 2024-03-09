import 'package:front/core/networking/api.result.dart';
import 'package:front/features/posts/data/models/comment.dart';

import '../entites/comment.dart';

abstract class CommentRepository {
  Future<ApiResult<List<Comment>>> getPostComments(String id, int page);
  Future<ApiResult<Comment>> getComment(String id);
  Future<ApiResult<Comment>> createComment(CommentModel comment);
  Future<ApiResult<Comment>> updateComment(CommentModel comment);
  Future<ApiResult<Comment>> deleteComment(CommentModel comment);
}
