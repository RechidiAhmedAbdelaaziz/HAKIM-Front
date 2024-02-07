import 'package:front/core/cache/post_comment.dart';

import '../models/comment.dart';

abstract class CommentLocalDataSource {
  Future<List<CommentModel>>? getCachedComments(String postId);
  Future cacheComments(String postId, List<CommentModel> model);
}

class CommentLocalDataSourceImpl implements CommentLocalDataSource {
  final CommentCache _local;
  CommentLocalDataSourceImpl({required CommentCache localStore})
      : _local = localStore;

  @override
  Future cacheComments(String postId, List<CommentModel> comments) async {
    var jsonComments =
        comments.map<Map<String, dynamic>>((e) => e.toJson()).toList();
    await _local.cacheComments(postId, jsonComments);
  }

  @override
  Future<List<CommentModel>>? getCachedComments(String postId) {
    final comments = _local.getComments(postId);
    if (comments != null) return Future.value(comments);
    return null;
  }
}
