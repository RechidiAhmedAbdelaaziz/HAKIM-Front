import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:front/features/auth/data/models/user.dart';
import 'package:front/features/auth/domain/usecases/index.dart';
import 'package:retrofit/http.dart';
import 'auth.res.dart';

part 'auth.remote.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class AuthRemoteDataSource {
  factory AuthRemoteDataSource(Dio dio, {String baseUrl}) =
      _AuthRemoteDataSource;

  //Get Profile
  @GET("${ApiConsts.auth}/{id}")
  Future<AuthResponse> getProfile(
    @Path("id") String id,
  );

  //Get My Profile
  @GET(ApiConsts.auth)
  Future<AuthResponse> getMyProfile();

  //Login
  @POST(ApiConsts.auth)
  Future<AuthResponse> login(
    @Body()  LoginParams info,
  );

  //@User - SignUp
  @POST("${ApiConsts.auth}/signup")
  Future<AuthResponse> signUp({
    @Body() required SignUpParams info,
  });

  //@DOCTOR - create
  @POST("${ApiConsts.auth}/signup-dr")
  Future<AuthResponse> createDoctor(
    @Body() AuthModel info,
  );
}
