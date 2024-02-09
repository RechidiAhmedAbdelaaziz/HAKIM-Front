import 'package:front/core/networking/api.result.dart';
import 'package:front/features/auth/domain/enitities/user.dart';

abstract class AuthRepository {
  Future<ApiResult<User>> getProfile();
}
