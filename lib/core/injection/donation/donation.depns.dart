part of 'index.dart';

Future _setUpDonation() async {
  locator.registerLazySingleton<DonationRemoteDataSource>(
      () => DonationRemoteDataSource(locator<Dio>()));

  locator.registerLazySingleton<DonationRepository>(() => DonationRepositoryImp(
        remote: locator<DonationRemoteDataSource>(),
      ));

  await _setUpUseCases();
}
