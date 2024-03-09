import 'package:front/core/networking/api.result.dart';

abstract class UseCase<T, P> {
  Future<ApiResult<T>> call(P params);
}

abstract class UseCaseEmpty<T> {
  Future<ApiResult<T>> call();
}
