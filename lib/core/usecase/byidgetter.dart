import 'package:front/core/injection/dependency.dart';
import 'package:front/features/auth/domain/enitities/doctor.dart';
import 'package:front/features/auth/domain/enitities/patient.dart';
import 'package:front/features/auth/domain/enitities/user.dart';
import 'package:front/features/auth/domain/usecases/get.profile.dart';
import 'package:front/features/posts/domain/entites/post.dart';
import 'package:front/features/posts/domain/usecases/post.getone.dart';

class ByIdGetter {
  final String id;

  ByIdGetter({required this.id});

  Future<User?> user() async =>
      (await locator<GetProfileUseCase>()(id)).mapOrNull(
        sucess: (value) {
          if (value.data.kind == "Doctor") {
            return value.data as Doctor;
          }
          return value.data as Patient;
        },
      );

  Future<Post?> post() async =>
      (await locator<GetPostUseCase>()(id)).mapOrNull(sucess: (value) {
        return value.data;
      });
}
