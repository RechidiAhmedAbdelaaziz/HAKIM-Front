import 'package:front/core/networking/api.result.dart';
import 'package:front/features/posts/data/models/post.dart';

import '../entites/post.dart';

abstract class PostRepository {
  Future<ApiResult<List<Post>>> getAllPosts(int page);
  Future<ApiResult<List<Post>>> getMyPosts(int page);
  Future<ApiResult<List<Post>>> getUserPosts(String id, int page);
  Future<ApiResult<Post>> getPost(String id);
  Future<ApiResult<String?>> createPost(PostModel post);
  Future<ApiResult<Post>> updatePost(PostModel post);
  Future<ApiResult<bool>> deletePost(PostModel post);
  Future<ApiResult<bool>> like(PostModel post);
  Future<ApiResult<bool>> unLike(PostModel post);
}
