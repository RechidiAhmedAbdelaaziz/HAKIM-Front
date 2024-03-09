part of 'index.dart';

Future _setUpAnswerUseCases() async {
  // Register AnswerUseCases
  locator.registerLazySingleton<AnswerUseCases>(() => AnswerUseCases(
        create: locator<CreateAnswerUseCase>(),
        update: locator<UpdateAnswerUseCase>(),
        getAll: locator<GetQuestionAnswersUseCase>(),
        delete: locator<DeleteAnswerUseCase>(),
      ));

  // Register AnswerUseCase dependencies
  locator.registerLazySingleton<CreateAnswerUseCase>(
      () => CreateAnswerUseCase(locator<AnswerRepository>()));

  locator.registerLazySingleton<UpdateAnswerUseCase>(
      () => UpdateAnswerUseCase(locator<AnswerRepository>()));

  locator.registerLazySingleton<GetQuestionAnswersUseCase>(
      () => GetQuestionAnswersUseCase(locator<AnswerRepository>()));

  locator.registerLazySingleton<DeleteAnswerUseCase>(
      () => DeleteAnswerUseCase(locator<AnswerRepository>()));
}
