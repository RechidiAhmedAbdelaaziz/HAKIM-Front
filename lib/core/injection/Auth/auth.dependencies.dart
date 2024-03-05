part of 'index.dart';

Future _setUpAuth() async {
  locator.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSource(locator<Dio>()));

  locator.registerLazySingleton(() => AuthCache(locator<SharedPreferences>()));

  locator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImp(
        remote: locator<AuthRemoteDataSource>(),
        local: locator<AuthCache>(),
      ));

  await _setUpUseCases();

  locator.registerFactory<AuthCubit>(() => AuthCubit(locator<AuthUseCases>()));
}
