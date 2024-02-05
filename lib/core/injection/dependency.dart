import 'package:dio/dio.dart';
import 'package:front/core/networking/api.service.dart';
import 'package:front/core/networking/dio.factory.dart';
import 'package:front/features/login/data/repository/login.repo.dart';
import 'package:front/features/login/logic/login_cubit.dart';
import 'package:front/features/signup/data/repo/signup.repo.dart';
import 'package:front/features/signup/logic/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  //Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //SignUp
  getIt.registerLazySingleton<SignupRepository>(() => SignupRepository(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  
}
