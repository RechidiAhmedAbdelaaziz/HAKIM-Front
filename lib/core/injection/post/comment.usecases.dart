part of 'index.dart';

Future<void> _setupCommentUseCases() async {
  locator.registerLazySingleton<CreateCommentUseCase>(
      () => CreateCommentUseCase(locator<CommentRepository>()));

  locator.registerLazySingleton<DeleteCommentUseCase>(
      () => DeleteCommentUseCase(locator<CommentRepository>()));

  locator.registerLazySingleton<GetAllCommentsUseCase>(
      () => GetAllCommentsUseCase(locator<CommentRepository>()));

  locator.registerLazySingleton<GetOneCommentUseCase>(
      () => GetOneCommentUseCase(locator<CommentRepository>()));

  locator.registerLazySingleton<UpdateCommentUseCase>(
      () => UpdateCommentUseCase(locator<CommentRepository>()));

  // Register comment use cases
  locator.registerLazySingleton<CommentUseCases>(() => CommentUseCases(
        create: locator<CreateCommentUseCase>(),
        update: locator<UpdateCommentUseCase>(),
        delete: locator<DeleteCommentUseCase>(),
        getAll: locator<GetAllCommentsUseCase>(),
        getOne: locator<GetOneCommentUseCase>(),
      ));
}
