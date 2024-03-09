part of 'index.dart';

Future _setUpAppointment() async {
  locator.registerLazySingleton<AppointmentRemoteDataSource>(
      () => AppointmentRemoteDataSource(locator<Dio>()));

  locator.registerLazySingleton<ApponitmentLocalSourceData>(
      () => ApponitmentLocalSourceDataImp());

  locator.registerLazySingleton<AppointmentRepository>(
      () => AppointmentRepositoryImpl(
            remote: locator<AppointmentRemoteDataSource>(),
            local: locator<ApponitmentLocalSourceData>(),
            info: locator<NetworkInfo>(),
          ));

  await _setUpUseCases();
}
