part of 'index.dart';

Future _setUpAnswer() async {
  locator.registerLazySingleton<AnswerRemoteDataSource>(
      () => AnswerRemoteDataSource(locator<Dio>()));
  locator.registerLazySingleton<AnswerLocalDataSource>(
      () => AnswerLocalDataSourceImp());

  locator.registerLazySingleton<AnswerRepository>(() => AnswerRepositoryImp(
        remote: locator<AnswerRemoteDataSource>(),
        local: locator<AnswerLocalDataSource>(),
        info: locator<NetworkInfo>(),
      ));

  await _setUpAnswerUseCases();
}
