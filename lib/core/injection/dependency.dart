import 'package:dio/dio.dart';
import 'package:front/core/networking/api.service.dart';
import 'package:front/core/networking/dio.factory.dart';
import 'package:front/core/networking/info.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './post/index.dart';

final locator = GetIt.instance;

Future<void> setupDependencies() async {
  //**                                                      **\\
  //*                   Global dependencies                  *\\
  //**                                                      **\\

  //Dio & ApiService
  locator.registerLazySingleton<Dio>(() => DioFactory.getDio());
  locator.registerLazySingleton<ApiService>(() => ApiService(locator<Dio>()));

  //Network Info
  locator.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImp(
      locator<InternetConnectionChecker>(),
    ),
  );

  //Shared preferences
  locator.registerLazySingletonAsync(
      () async => await SharedPreferences.getInstance());

  //Internet connection checker
  locator
      .registerLazySingleton(() => InternetConnectionChecker.createInstance());

  //**                                                      **\\
  //*                   Feature  dependencies                *\\
  //**                                                      **\\

  //
  await setupPostDependencies();
}
