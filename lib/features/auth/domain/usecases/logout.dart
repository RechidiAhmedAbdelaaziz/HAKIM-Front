import 'package:dio/dio.dart';
import 'package:front/core/injection/dependency.dart';
import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../repo/auth.dart';

class LogOutUseCase extends UseCaseEmpty<bool> {
  final AuthRepository _repository;

  LogOutUseCase(this._repository);

  @override
  Future<ApiResult<bool>> call() async {
    final result = await _repository.logOut();

    locator<Dio>()
        .options
        .headers
        .removeWhere((key, value) => key == "Authorization");

    return result;
  }
}
