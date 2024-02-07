import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/api.service.dart';
import 'package:front/core/networking/error.handler.dart';
import 'package:front/features/login/data/models/login.req.dart';
import 'package:front/features/login/data/models/login.res.dart';

class LoginRepository {
  final ApiService _api;
  LoginRepository(this._api);

  Future<ApiResult<LoginResponse>> login(LoginRequest info) async {
    try {
      return ApiResult.sucess(await _api.login(info));
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
