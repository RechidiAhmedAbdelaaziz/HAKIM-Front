import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/api.try_catch.dart';
import 'package:front/core/networking/info.dart';
import 'package:front/features/posts/data/models/comment.res.dart';

import '../../domain/entites/comment.dart';
import '../../domain/repositories/comment.dart';
import '../source/comment.local.dart';
import '../source/comment.remote.dart';

class CommentRepositoryImp implements CommentRepository {
  final CommentRemoteDataSource _remote;
  final CommentLocalDataSource _local;
  final NetworkInfo _networkInfo;

  CommentRepositoryImp(
      {required CommentRemoteDataSource remote,
      required CommentLocalDataSource local,
      required NetworkInfo networkInfo})
      : _networkInfo = networkInfo,
        _local = local,
        _remote = remote;

  @override
  Future<ApiResult<CommentResponse>> createComment(Comment comment) async {
    final comment_ = comment.toModel();
    callback() async {
      final data = await _remote.createComment(comment_, comment.id);
      return ApiResult.sucess(data);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult> deleteComment(String id) {
    callback() async {
      await _remote.deleteComment(id);
      return const ApiResult.sucess(null);
    }

    return TryCallApi(callback).call();
  }
}
