part of 'index.dart';

Future<void> _setupPostUseCases() async {
  //Use Cases
  locator.registerLazySingleton<DeletePostUseCase>(
      () => DeletePostUseCase(locator<PostRepository>()));

  locator.registerLazySingleton<GetAllPostsUseCase>(
      () => GetAllPostsUseCase(locator<PostRepository>()));

  locator.registerLazySingleton<GetMyPostsUseCase>(
      () => GetMyPostsUseCase(locator<PostRepository>()));

  locator.registerLazySingleton<GetPostUseCase>(
      () => GetPostUseCase(locator<PostRepository>()));

  locator.registerLazySingleton<GetUserPostsUseCase>(
      () => GetUserPostsUseCase(locator<PostRepository>()));

  locator.registerLazySingleton<LikePostUseCase>(
      () => LikePostUseCase(locator<PostRepository>()));

  locator.registerLazySingleton<UnLikePostUseCase>(
      () => UnLikePostUseCase(locator<PostRepository>()));

  locator.registerLazySingleton<CreatePostUseCase>(
      () => CreatePostUseCase(locator<PostRepository>()));

  locator.registerLazySingleton<UpdatePostUseCase>(
      () => UpdatePostUseCase(locator<PostRepository>()));

// Register post use cases
  locator.registerLazySingleton<PostUseCases>(() => PostUseCases(
        create: locator<CreatePostUseCase>(),
        update: locator<UpdatePostUseCase>(),
        delete: locator<DeletePostUseCase>(),
        getAll: locator<GetAllPostsUseCase>(),
        getMy: locator<GetMyPostsUseCase>(),
        getUser: locator<GetUserPostsUseCase>(),
        getOne: locator<GetPostUseCase>(),
        like: locator<LikePostUseCase>(),
        unLike: locator<UnLikePostUseCase>(),
      ));
}
