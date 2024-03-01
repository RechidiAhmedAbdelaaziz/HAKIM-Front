part of 'index.dart';

Future<void> _setupPost() async {
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

  //Repository
  locator.registerLazySingleton<PostRepository>(() => PostRepositoryImp(
        remote: locator<PostRemoteDataSource>(),
        local: locator<PostLocalDataSource>(),
        networkInfo: locator<NetworkInfo>(),
      ));

  await _setupPostUseCases();

  //Cubit
  locator.registerFactory<PostCubit>(() => PostCubit(locator<PostUseCases>()));
}
