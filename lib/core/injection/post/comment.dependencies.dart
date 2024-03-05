part of 'index.dart';

Future<void> _setupComment() async {
  //Data Sources
  locator.registerLazySingleton<CommentRemoteDataSource>(
      () => CommentRemoteDataSource(locator<Dio>()));

  //Repositories
  locator.registerLazySingleton<CommentRepository>(() => CommentRepositoryImp(
        remote: locator<CommentRemoteDataSource>(),
        local: locator<CommentLocalDataSource>(),
        networkInfo: locator<NetworkInfo>(),
      ));

  await _setupCommentUseCases();

  
}
