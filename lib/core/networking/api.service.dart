import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:front/features/login/data/models/login.req.body.dart';
import 'package:front/features/login/data/models/login.res.dart';
import 'package:front/features/signup/data/models/signup.req.dart';
import 'package:front/features/signup/data/models/signup.res.dart';
import 'package:retrofit/http.dart';

part 'api.service.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // Authentication methods
  @POST(ApiConsts.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody body,
  );

  @POST(ApiConsts.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody body,
  );

  @POST(ApiConsts.signup)
  Future<SignupResponse> signupDr(
    @Body() SignupRequestBodyDr body,
  );
}
