import 'package:front/core/networking/error.handler.dart';

import 'api.result.dart';

class TryCallApi<T> {
  final Future<ApiResult<T>> Function() _callback;

  TryCallApi(this._callback);

  Future<ApiResult<T>> call() async {
    try {
      return await _callback();
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
