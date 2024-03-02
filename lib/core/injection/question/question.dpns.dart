part of 'index.dart';

Future _setUpQuestion() async {
  locator.registerLazySingleton<QuestionRemoteDataSource>(
      () => QuestionRemoteDataSource(locator<Dio>()));

  locator
      .registerLazySingleton<QuestionRepository>(() => QuestionRepositoryImpl(
            remote: locator<QuestionRemoteDataSource>(),
            local: locator<QuestionLocalSourceData>(),
            info: locator<NetworkInfo>(),
          ));

  await _setUpQuestionUseCases();
}
