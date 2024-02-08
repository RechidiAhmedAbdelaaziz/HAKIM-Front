import 'package:dio/dio.dart';
import 'package:front/core/cache/post_comment.dart';
import 'package:front/core/networking/api.service.dart';
import 'package:front/core/networking/dio.factory.dart';
import 'package:front/core/networking/info.dart';
import 'package:front/features/login/data/repository/login.repo.dart';
import 'package:front/features/login/logic/login_cubit.dart';
import 'package:front/features/posts/data/repositories/post.imp.dart';
import 'package:front/features/posts/data/source/post.local.dart';
import 'package:front/features/posts/data/source/post.remote.dart';
import 'package:front/features/posts/domain/repositories/post.dart';
import 'package:front/features/posts/logic/post/post_cubit.dart';
import 'package:front/features/signup/data/repo/signup.repo.dart';
import 'package:front/features/signup/logic/signup_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'post.dependencies.dart';

final locator = GetIt.instance;

Future<void> setupDependencies() async {
  //**                                                      **\\
  //*                   Global dependencies                  *\\
  //**                                                      **\\

  //Dio & ApiService
  locator.registerLazySingleton<Dio>(() => DioFactory.getDio());
  locator.registerLazySingleton<ApiService>(() => ApiService(locator<Dio>()));

  //Shared preferences
  locator.registerLazySingletonAsync(
      () async => await SharedPreferences.getInstance());

  //Internet connection checker
  locator
      .registerLazySingleton(() => InternetConnectionChecker.createInstance());

  //**                                                      **\\
  //*                   Feature  dependencies                *\\
  //**                                                      **\\

  //login
  locator
      .registerLazySingleton<LoginRepository>(() => LoginRepository(locator()));
  locator.registerFactory<LoginCubit>(() => LoginCubit(locator()));

  //SignUp
  locator.registerLazySingleton<SignupRepository>(
      () => SignupRepository(locator()));
  locator.registerFactory<SignupCubit>(() => SignupCubit(locator()));

  //post
  await setupPostDependencies();
}
