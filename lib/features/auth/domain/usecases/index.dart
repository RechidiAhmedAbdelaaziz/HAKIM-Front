// ignore_for_file: unused_field

import 'signup.dart';
import 'create.doctor.dart';
import 'get.my.profile.dart';
import 'get.profile.dart';
import 'login.dart';
import 'logout.dart';

class AuthUseCases {
  AuthUseCases(
      {required CreateDoctorUseCase createDoctor,
      required GetMyProfileUseCase getMyProfile,
      required GetProfileUseCase getProfile,
      required LoginUseCase login,
      required LogOutUseCase logout,
      required SignUpUseCase signup})
      : _createDoctor = createDoctor,
        _getMyProfile = getMyProfile,
        _getProfile = getProfile,
        _login = login,
        _logout = logout,
        _signup = signup;

  final CreateDoctorUseCase _createDoctor;
  final GetMyProfileUseCase _getMyProfile;
  final GetProfileUseCase _getProfile;
  final LoginUseCase _login;
  final LogOutUseCase _logout;
  final SignUpUseCase _signup;
}
