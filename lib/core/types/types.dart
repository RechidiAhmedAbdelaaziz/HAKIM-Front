import '../networking/api.result.dart';

typedef FutureApi<T> = Future<ApiResult<T>>;
ApiResult apiSuccess<T>(T data) => ApiResult.sucess(data);
