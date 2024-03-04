import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/posts/data/models/comment.dart';
import '../../features/posts/data/models/post.dart';

class PostCache {
  final SharedPreferences _sharedPreferences;
  PostCache(this._sharedPreferences);

  // CACHE POSTS
  Future<bool> cachePosts(List<Map<String, dynamic>> jsonPosts) async {
    return await _sharedPreferences.setString("POSTS", json.encode(jsonPosts));
  }

  List<PostModel>? getPosts() {
    String? cached = _sharedPreferences.getString("POSTS");
    if (cached == null) return null;

    List<Map<String, dynamic>> decoded = json.decode(cached);
    return decoded.map<PostModel>((e) => PostModel.fromJson(e)).toList();
  }
}

class CommentCache {
  final SharedPreferences _sharedPreferences;
  CommentCache(this._sharedPreferences);

  Future<bool> cacheComments(
      String postID, List<Map<String, dynamic>> jsonComments) async {
    return await _sharedPreferences.setString(
        "POST/$postID", json.encode(jsonComments));
  }

  List<CommentModel>? getComments(String postID) {
    String? cached = _sharedPreferences.getString("POST/$postID");
    if (cached == null) return null;
    List<Map<String, dynamic>> decoded = json.decode(cached);
    return decoded.map<CommentModel>((e) => CommentModel.fromJson(e)).toList();
  }
}
