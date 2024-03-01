part of 'index.dart';

Future<void> setupComment() async {
  //Data Sources
  locator.registerLazySingleton<CommentRemoteDataSource>(
      () => CommentRemoteDataSource(locator<Dio>()));

  //Repositories
  locator.registerLazySingleton<CommentRepository>(() => CommentRepositoryImp(
        remote: locator<CommentRemoteDataSource>(),
        local: locator<CommentLocalDataSource>(),
        networkInfo: locator<NetworkInfo>(),
      ));

  locator.registerFactory<CommentCubit>(
      () => CommentCubit(locator<CommentUseCases>()));

  //Use Cases
  await setupCommentUseCases();
}
