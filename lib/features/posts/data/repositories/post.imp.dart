import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/api.try_catch.dart';
import 'package:front/core/networking/info.dart';

import '../../domain/entites/post.dart';
import '../../domain/repositories/post.dart';
import '../source/post.local.dart';
import '../source/post.remote.dart';

class PostRepositoryImp implements PostRepository {
  final PostRemoteDataSource remote;
  final PostLocalDataSource local;
  final NetworkInfo networkInfo;

  PostRepositoryImp(
      {required this.remote, required this.local, required this.networkInfo});

  @override
  Future<ApiResult> createPost(Post post) async {
    return TryCallApi(() async {
      await remote.createPost(post.toModel());
      return const ApiResult.sucess(null);
    }).call();
  }

  @override
  Future<ApiResult> deletePost(String id) {
    return TryCallApi(() async {
      await remote.deletePost(id);
      return const ApiResult.sucess(null);
    }).call();
  }

  @override
  Future<ApiResult<List<Post>>> getAllPosts() async {
    return TryCallApi<List<Post>>(
      () async {
        final response = await remote.getAllPosts();
        local.cachePosts(
          response.where((e) => e.data != null).map((e) => e.data!).toList(),
        );

        List<Post> posts = response
            .where((e) => e.data != null)
            .map((e) => Post.fromModel(e.data!))
            .toList();

        return ApiResult.sucess(posts);
      },
    ).call();
  }

  @override
  Future<ApiResult> updatePost(Post post) {
    final post0 = post.toModel();
    return TryCallApi(() async {
      await remote.updatePost(post0.id, post0);
      return const ApiResult.sucess(null);
    }).call();
  }

  @override
  Future<ApiResult> like(String id) {
    callback() async {
      await remote.like(id);
      return const ApiResult.sucess(null);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult> unLike(String id) {
    callback() async {
      await remote.unLike(id);
      return const ApiResult.sucess(null);
    }

    return TryCallApi(callback).call();
  }
}
