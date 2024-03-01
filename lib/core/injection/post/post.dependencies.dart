part of 'index.dart';

Future<void> setupPost() async {
  // Remote date_Source
  locator.registerLazySingleton<PostRemoteDataSource>(
      () => PostRemoteDataSource(locator<Dio>()));

  // Local data_Source
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

  //Use Cases
  await setupPostUseCases();

  //Repository
  locator.registerLazySingleton<PostRepository>(() => PostRepositoryImp(
        remote: locator<PostRemoteDataSource>(),
        local: locator<PostLocalDataSource>(),
        networkInfo: locator<NetworkInfo>(),
      ));

  //Cubit
  locator.registerFactory<PostCubit>(() => PostCubit(locator<PostUseCases>()));
}
