// ignoreforfile: unusedfield
export 'signup.dart';
export 'create.doctor.dart';
export 'get.my.profile.dart';
export 'get.profile.dart';
export 'login.dart';
export 'logout.dart';
import 'signup.dart';
import 'create.doctor.dart';
import 'get.my.profile.dart';
import 'get.profile.dart';
import 'login.dart';
import 'logout.dart';

class AuthUseCases {
  AuthUseCases(
      {required this.createDoctor,
      required this.getMyProfile,
      required this.getProfile,
      required this.login,
      required this.logout,
      required this.signup});

  final CreateDoctorUseCase createDoctor;
  final GetMyProfileUseCase getMyProfile;
  final GetProfileUseCase getProfile;
  final LoginUseCase login;
  final LogOutUseCase logout;
  final SignUpUseCase signup;
}
