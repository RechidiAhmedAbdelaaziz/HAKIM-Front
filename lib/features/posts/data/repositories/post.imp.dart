import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/api.try_catch.dart';
import 'package:front/core/networking/info.dart';

import '../../domain/entites/post.dart';
import '../../domain/repositories/post.dart';
import '../source/post.local.dart';
import '../source/post.remote.dart';

class PostRepositoryImp implements PostRepository {
  final PostRemoteDataSource _remote;
  final PostLocalDataSource _local;
  final NetworkInfo _networkInfo;

  PostRepositoryImp(
      {required PostRemoteDataSource remote,
      required PostLocalDataSource local,
      required NetworkInfo networkInfo})
      : _networkInfo = networkInfo,
        _local = local,
        _remote = remote;

  @override
  Future<ApiResult> createPost(Post post) async {
    return TryCallApi(() async {
      await _remote.createPost(post.toModel());
      return const ApiResult.sucess(null);
    }).call();
  }

  @override
  Future<ApiResult> deletePost(String id) {
    return TryCallApi(() async {
      await _remote.deletePost(id);
      return const ApiResult.sucess(null);
    }).call();
  }

  @override
  Future<ApiResult<List<Post>>> getAllPosts() async {
    return TryCallApi<List<Post>>(
      () async {
        final response = await _remote.getAllPosts();

        List<Post> posts =
            response.data!.map((e) => Post.fromModel(e)).toList();

        return ApiResult.sucess(posts);
      },
    ).call();
  }

  @override
  Future<ApiResult> updatePost(Post post) {
    final post0 = post.toModel();
    return TryCallApi(() async {
      await _remote.updatePost(post0.id, post0);
      return const ApiResult.sucess(null);
    }).call();
  }

  @override
  Future<ApiResult> like(String id) {
    callback() async {
      await _remote.like(id);
      return const ApiResult.sucess(null);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult> unLike(String id) {
    callback() async {
      await _remote.unLike(id);
      return const ApiResult.sucess(null);
    }

    return TryCallApi(callback).call();
  }
}
