import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/api.try_catch.dart';
import 'package:front/core/networking/info.dart';

import '../../domain/entites/comment.dart';
import '../../domain/repositories/comment.dart';
import '../source/comment.local.dart';
import '../source/comment.remote.dart';

class CommentRepositoryImp implements CommentRepository {
  final CommentRemoteDataSource _remote;

  CommentRepositoryImp(
      {required CommentRemoteDataSource remote,
      required CommentLocalDataSource local,
      required NetworkInfo networkInfo})
      : _remote = remote;

  @override
  Future<ApiResult<Comment>> createComment(CommentRequestBody comment) async {
    callback() async {
      final response = await _remote.createComment(comment, comment.id);
      final data = await Comment.fromModle(response.data!);
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<bool>> deleteComment(String id) async {
    callback() async {
      final response = await _remote.deleteComment(id);
      final data = response.status == true;
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Comment>> getComment(String id) async {
    callback() async {
      final response = await _remote.getComment(id);
      final data = await Comment.fromModle(response.data!);
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<List<Comment>>> getPostComments(String id, int page) async {
    callback() async {
      final response = await _remote.getAllComments(id, page);
      List<Comment> data = [];

      for (final model in response.data!) {
        final x = await Comment.fromModle(model);
        data.add(x);
      }

      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Comment>> updateComment(CommentRequestBody comment) async {
    callback() async {
      final response = await _remote.updateComment(comment, comment.id);
      final data = await Comment.fromModle(response.data!);
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }
}
