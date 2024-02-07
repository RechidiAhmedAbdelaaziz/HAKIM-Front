import 'package:front/core/cache/post_comment.dart';
import 'package:front/features/posts/data/models/post.dart';

abstract class PostLocalDataSource {
  Future<List<PostModel>>? getCachedPosts();
  Future cachePosts(List<PostModel> model);
}

class PostLocalDataSourceImpl implements PostLocalDataSource {
  final PostCache _local;
  PostLocalDataSourceImpl({required PostCache localStorage}) : _local = localStorage;

  @override
  Future cachePosts(List<PostModel> posts) async {
    var jsonPosts = posts.map<Map<String, dynamic>>((e) => e.toJson()).toList();
    await _local.cachePosts(jsonPosts);
  }

  @override
  Future<List<PostModel>>? getCachedPosts() {
    final posts = _local.getPosts();
    if (posts != null) return Future.value(posts);
    return null;
  }
}
