import 'package:dio/dio.dart';
import 'package:front/core/injection/Auth/index.dart';
import 'package:front/core/injection/appointment/index.dart';
import 'package:front/core/injection/donation/index.dart';
import 'package:front/core/injection/question/index.dart';
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
  DioFactory.getDio();
  locator.registerLazySingleton<Dio>(() => DioFactory.dio!);
  locator.registerLazySingleton<ApiService>(() => ApiService(locator<Dio>()));

  //Network Info
  locator.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImp(
      locator<InternetConnectionChecker>(),
    ),
  );

  //Shared preferences
  locator.registerLazySingletonAsync<SharedPreferences>(
      () async => await SharedPreferences.getInstance());
  await locator.isReady<SharedPreferences>();

  //Internet connection checker
  locator
      .registerLazySingleton(() => InternetConnectionChecker.createInstance());

  //**                                                      **\\
  //*                   Feature  dependencies                *\\
  //**

  await setupAuthependencies();
  await setupPostDependencies();
  await setUpAppointmentDependencies();
  await setUpQuestionDependencies();
  await setUpDonationDependencies();
}
