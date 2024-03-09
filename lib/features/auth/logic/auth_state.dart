part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loaded() = _Loaded;
  const factory AuthState.loggedin(User user) = _Loggined;
  const factory AuthState.signedup(User user, {bool? isPro}) = _SignedUp;
  const factory AuthState.loggedout() = _LoggedOut;
  const factory AuthState.error(ErrorHandler error) = _Error;
}
