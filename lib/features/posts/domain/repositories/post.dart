import 'package:front/core/networking/api.result.dart';
import 'package:json_annotation/json_annotation.dart';

import '../entites/post.dart';

part 'post.g.dart';

@JsonSerializable()
class PostRequestBody {
  final String text;
  final String? id;
  PostRequestBody({required this.text, this.id});
  Map<String, dynamic> toJson() => _$PostRequestBodyToJson(this);
}

abstract class PostRepository {
  Future<ApiResult<List<Post>>> getAllPosts(int page);
  Future<ApiResult<List<Post>>> getMyPosts(int page);
  Future<ApiResult<List<Post>>> getUserPosts(String id, int page);
  Future<ApiResult<Post>> getPost(String id);
  Future<ApiResult<Post>> createPost(PostRequestBody post);
  Future<ApiResult<Post>> updatePost(PostRequestBody post);
  Future<ApiResult<bool>> deletePost(String id);
  Future<ApiResult<bool>> like(String id);
  Future<ApiResult<bool>> unLike(String id);
}
