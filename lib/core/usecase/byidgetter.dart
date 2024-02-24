import 'package:front/core/injection/dependency.dart';
import 'package:front/features/auth/domain/enitities/user.dart';
import 'package:front/features/auth/domain/usecases/get.profile.dart';

class ByIdGetter {
  final String id;

  ByIdGetter({required this.id});

  Future<User?> get user async =>
      (await locator<GetProfileUseCase>()(id)).mapOrNull(
        sucess: (value) => value.data,
      );
}
