import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/api.service.dart';
import 'package:front/core/networking/error.handler.dart';
import 'package:front/features/signup/data/models/signup.req.dart';
import 'package:front/features/signup/data/models/signup.res.dart';

class SignupRepository {
  final ApiService _api;
  SignupRepository(this._api);

  Future<ApiResult<SignupResponse>> signup(SignupRequestBody info) async {
    try {
      return ApiResult.sucess(await _api.signup(info));
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<SignupResponse>> signupDr(SignupRequestBodyDr info) async {
    try {
      return ApiResult.sucess(await _api.signupDr(info));
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
