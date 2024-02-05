import 'package:dio/dio.dart';
import 'package:front/core/networking/api.service.dart';
import 'package:front/core/networking/dio.factory.dart';
import 'package:front/features/login/data/repository/login.repo.dart';
import 'package:front/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  //Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

  
}
