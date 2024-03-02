part of 'index.dart';

Future _setUpQuestionUseCases() async {
  // Register QuestionUseCases
  locator.registerLazySingleton<QuestionUseCases>(() => QuestionUseCases(
        create: locator<CreateQuestionUseCase>(),
        update: locator<UpdateQuestionUseCase>(),
        getAll: locator<GetAllQuestionUseCase>(),
        delete: locator<DeleteQuestionUseCase>(),
      ));

  // Register QuestionUseCase dependencies
  locator.registerLazySingleton<CreateQuestionUseCase>(
      () => CreateQuestionUseCase(locator<QuestionRepository>()));

  locator.registerLazySingleton<UpdateQuestionUseCase>(
      () => UpdateQuestionUseCase(locator<QuestionRepository>()));

  locator.registerLazySingleton<GetAllQuestionUseCase>(
      () => GetAllQuestionUseCase(locator<QuestionRepository>()));

  locator.registerLazySingleton<DeleteQuestionUseCase>(
      () => DeleteQuestionUseCase(locator<QuestionRepository>()));
}
