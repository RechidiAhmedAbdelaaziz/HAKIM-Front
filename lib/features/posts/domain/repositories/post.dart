import 'package:front/core/networking/api.result.dart';

import '../entites/post.dart';

abstract class PostRepository {
  Future<ApiResult<List<Post>>> getAllPosts();
  Future<ApiResult> createPost(Post post);
  Future<ApiResult> updatePost(Post post);
  Future<ApiResult> deletePost(String id);
  Future<ApiResult> like(String id);
  Future<ApiResult> unLike(String id);
}
