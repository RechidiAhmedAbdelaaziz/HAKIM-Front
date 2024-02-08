part of 'dependency.dart';

Future<void> setupPostDependencies() async {
  // Remote date_Source
  locator.registerLazySingleton<PostRemoteDataSource>(
      () => PostRemoteDataSource(locator<Dio>()));

  // Remote local_Source
  locator.registerLazySingleton(
    () => PostCache(
      locator<SharedPreferences>(),
    ),
  );
  locator.registerLazySingleton<PostLocalDataSource>(
    () => PostLocalDataSourceImpl(
      locator<PostCache>(),
    ),
  );

  //Network Info
  locator.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImp(
      locator<InternetConnectionChecker>(),
    ),
  );

  //Repository
  locator.registerLazySingleton<PostRepository>(() => PostRepositoryImp(
        remote: locator<PostRemoteDataSource>(),
        local: locator<PostLocalDataSource>(),
        networkInfo: locator<NetworkInfo>(),
      ));

  //Cubit
  locator
      .registerFactory<PostCubit>(() => PostCubit(locator<PostRepository>()));
}
