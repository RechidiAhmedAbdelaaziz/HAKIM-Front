part of 'index.dart';

Future _setUpUseCases() async {
  // Register CreateDonationUseCase
  locator
      .registerLazySingleton<CreateDonationUseCase>(() => CreateDonationUseCase(
            locator<DonationRepository>(),
          ));

  // Register DeleteDonationUseCase
  locator
      .registerLazySingleton<DeleteDonationUseCase>(() => DeleteDonationUseCase(
            locator<DonationRepository>(),
          ));

  // Register EditDonationUseCase
  locator.registerLazySingleton<EditDonationUseCase>(() => EditDonationUseCase(
        locator<DonationRepository>(),
      ));

  // Register GetAllDonationsUseCase
  locator.registerLazySingleton<GetAllDonationsUseCase>(
      () => GetAllDonationsUseCase(
            locator<DonationRepository>(),
          ));

  // Register DonationUseCases
  locator.registerLazySingleton<DonationUseCases>(() => DonationUseCases(
        create: locator<CreateDonationUseCase>(),
        delete: locator<DeleteDonationUseCase>(),
        edit: locator<EditDonationUseCase>(),
        getAll: locator<GetAllDonationsUseCase>(),
      ));
}
