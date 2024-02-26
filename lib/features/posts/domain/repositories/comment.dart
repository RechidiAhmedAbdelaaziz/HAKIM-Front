import 'package:front/core/networking/api.result.dart';
import 'package:json_annotation/json_annotation.dart';

import '../entites/comment.dart';

part 'comment.g.dart';

@JsonSerializable()
class CommentRequestBody {
  final String text;
  final String id;
  CommentRequestBody({required this.text, required this.id});
  Map<String, dynamic> toJson() => _$CommentRequestBodyToJson(this);
}

abstract class CommentRepository {
  Future<ApiResult<List<Comment>>> getPostComments(String id, int page);
  Future<ApiResult<Comment>> getComment(String id);
  Future<ApiResult<Comment>> createComment(CommentRequestBody comment);
  Future<ApiResult<Comment>> updateComment(CommentRequestBody comment);
  Future<ApiResult<bool>> deleteComment(String id);
}
