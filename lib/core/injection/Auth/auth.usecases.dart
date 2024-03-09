part of 'index.dart';

Future _setUpUseCases() async {
  locator.registerLazySingleton<CreateDoctorUseCase>(() => CreateDoctorUseCase(
        locator<AuthRepository>(),
        locator<AuthCache>(),
      ));

  locator.registerLazySingleton<GetMyProfileUseCase>(
      () => GetMyProfileUseCase(locator<AuthRepository>()));

  locator.registerLazySingleton<GetProfileUseCase>(
      () => GetProfileUseCase(locator<AuthRepository>()));

  locator.registerLazySingleton<LoginUseCase>(() => LoginUseCase(
        locator<AuthRepository>(),
        locator<AuthCache>(),
      ));

  locator.registerLazySingleton<LogOutUseCase>(
      () => LogOutUseCase(locator<AuthRepository>()));

  locator.registerLazySingleton<SignUpUseCase>(() => SignUpUseCase(
        locator<AuthRepository>(),
        locator<AuthCache>(),
      ));

// Register AuthUseCases
  locator.registerLazySingleton<AuthUseCases>(() => AuthUseCases(
        createDoctor: locator<CreateDoctorUseCase>(),
        getMyProfile: locator<GetMyProfileUseCase>(),
        getProfile: locator<GetProfileUseCase>(),
        login: locator<LoginUseCase>(),
        logout: locator<LogOutUseCase>(),
        signup: locator<SignUpUseCase>(),
      ));
}
