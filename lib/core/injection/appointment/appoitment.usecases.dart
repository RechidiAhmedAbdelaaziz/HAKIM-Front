part of 'index.dart';

Future _setUpUseCases() async {
  // Register AppointmentUseCase dependencies
  locator.registerLazySingleton<CreateAppointmentUseCase>(
      () => CreateAppointmentUseCase(locator<AppointmentRepository>()));

  locator.registerLazySingleton<GetOneAppointmentUseCase>(
      () => GetOneAppointmentUseCase(locator<AppointmentRepository>()));

  locator.registerLazySingleton<GetAllAppointmentUseCase>(
      () => GetAllAppointmentUseCase(locator<AppointmentRepository>()));

  locator.registerLazySingleton<CancelAppointmentUseCase>(
      () => CancelAppointmentUseCase(locator<AppointmentRepository>()));

  locator.registerLazySingleton<RescheduleAppointmentUseCase>(
      () => RescheduleAppointmentUseCase(locator<AppointmentRepository>()));

  // Register AppointmentUseCases
  locator.registerLazySingleton<AppointmentUseCases>(() => AppointmentUseCases(
        create: locator<CreateAppointmentUseCase>(),
        getOne: locator<GetOneAppointmentUseCase>(),
        getAll: locator<GetAllAppointmentUseCase>(),
        cancel: locator<CancelAppointmentUseCase>(),
        reschedule: locator<RescheduleAppointmentUseCase>(),
      ));
}
