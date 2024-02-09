import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:retrofit/http.dart';
import '../models/auth.res.dart';

part 'auth.remote.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AuthRemoteDataSource {
  factory AuthRemoteDataSource(Dio dio, {String baseUrl}) =
      _AuthRemoteDataSource;

  //Get Profile
  @GET(ApiConstants.auth)
  Future<AuthResponse> getProfile();
}
