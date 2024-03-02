import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/api.try_catch.dart';
import 'package:front/core/networking/info.dart';
import 'package:front/features/posts/data/models/post.dart';

import '../../domain/entites/post.dart';
import '../../domain/repositories/post.dart';
import '../source/post.local.dart';
import '../source/post.remote.dart';

class PostRepositoryImp implements PostRepository {
  final PostRemoteDataSource _remote;

  PostRepositoryImp(
      {required PostRemoteDataSource remote,
      required PostLocalDataSource local,
      required NetworkInfo networkInfo})
      : _remote = remote;

  @override
  Future<ApiResult<List<Post>>> getAllPosts(int page) async {
    callback() async {
      final response = await _remote.getAllPosts(page);
      final data = await _posts(response.data);

      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<List<Post>>> getMyPosts(int page) async {
    callback() async {
      final response = await _remote.getMyPosts(page);
      final data = await _posts(response.data);

      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<List<Post>>> getUserPosts(String id, int page) async {
    callback() async {
      final response = await _remote.getUserPosts(id, page);
      final data = await _posts(response.data);

      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<String?>> createPost(PostModel post) async {
    callback() async {
      final response = await _remote.createPost(post);
      return ApiResult.sucess(response.data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Post>> updatePost(PostModel post) async {
    callback() async {
      final response = await _remote.updatePost(post.id!, post);
      final data = Post.fromModel(response.data!);
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<bool>> deletePost(PostModel post) async {
    callback() async {
      final response = await _remote.deletePost(post.id);
      final data = response.status == true;
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<bool>> like(PostModel post) async {
    callback() async {
      final response = await _remote.like(post.id);
      final data = response.status == true;
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<bool>> unLike(PostModel post) async {
    callback() async {
      final response = await _remote.unLike(post.id);
      final data = response.status == true;
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  Future<List<Post>> _posts(List<PostModel>? posts) async {
    var data = <Post>[];

    if (posts != null) {
      for (final post in posts) {
        final post_ = Post.fromModel(post);
        data.add(post_);
      }
    }
    return data;
  }

  @override
  Future<ApiResult<Post>> getPost(String id) async {
    callback() async {
      final response = await _remote.getPostById(id);
      final data = Post.fromModel(response.data!);
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }
}
