import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/api.try_catch.dart';
import 'package:front/core/networking/info.dart';
import 'package:front/features/auth/data/source/auth.remote.dart';
import 'package:front/features/auth/domain/enitities/doctor.dart';
import 'package:front/features/auth/domain/enitities/patient.dart';
import 'package:front/features/auth/domain/enitities/user.dart';
import 'package:front/features/auth/domain/repo/auth.dart';

class AuthRepositoryImp implements AuthRepository {
  final AuthRemoteDataSource _remote;
  final NetworkInfo _info;

  AuthRepositoryImp(
      {required AuthRemoteDataSource remote, required NetworkInfo info})
      : _remote = remote,
        _info = info;

  @override
  Future<ApiResult<User>> getProfile() {
    callback() async {
      final response = await _remote.getProfile();
      final kind = response.data!.kind;
      if (kind == "Doctor") {
        final data = Doctor.fromModel(response.data!);
        return ApiResult.sucess(data);
      }
      final data = Patient.fromModel(response.data!);
      return ApiResult.sucess(data);
    }

    return TryCallApi(callback).call();
  }
}
