import 'dart:convert';
import 'local.dart';

import '../../features/posts/data/models/comment.dart';
import '../../features/posts/data/models/post.dart';

class PostCache extends LocalStorage {
  PostCache(super.sharedPreferences);

  // CACHE POSTS
  Future<bool> cachePosts(List<Map<String, dynamic>> jsonPosts) async {
    return await sharedPreferences.setString("POSTS", json.encode(jsonPosts));
  }

  List<PostModel>? getPosts() {
    String? cached = sharedPreferences.getString("POSTS");
    if (cached == null) return null;

    List<Map<String, dynamic>> decoded = json.decode(cached);
    return decoded.map<PostModel>((e) => PostModel.fromJson(e)).toList();
  }
}

class CommentCache extends LocalStorage {
  CommentCache(super.sharedPreferences);

  Future<bool> cacheComments(
      String postID, List<Map<String, dynamic>> jsonComments) async {
    return await sharedPreferences.setString(
        "POST/$postID", json.encode(jsonComments));
  }

  List<CommentModel>? getComments(String postID) {
    String? cached = sharedPreferences.getString("POST/$postID");
    if (cached == null) return null;
    List<Map<String, dynamic>> decoded = json.decode(cached);
    return decoded.map<CommentModel>((e) => CommentModel.fromJson(e)).toList();
  }
}
