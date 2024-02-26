import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../repositories/post.dart';

class LikePostUseCase extends UseCaseWithParams<bool, String> {
  final PostRepository _repository;

  LikePostUseCase(this._repository);

  @override
  Future<ApiResult<bool>> call(String params) async {
    return await _repository.like(params);
  }
}
