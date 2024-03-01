import 'package:front/core/networking/api.result.dart';
import 'package:front/features/auth/data/models/user.dart';
import 'package:front/features/auth/domain/enitities/user.dart';

abstract class AuthRepository {
  Future<ApiResult<User>> getCurrentUser();
  Future<ApiResult<User>> getUserById(String id);

  Future<ApiResult<User>> login({
    required String login,
    required String password,
  });

  Future<ApiResult<User>> signUp({
    required String email,
    required String name,
    required String password,
  });

  Future<ApiResult<User>> createDoctor(AuthModel doctor);
  Future<ApiResult<bool>> logOut();
}
