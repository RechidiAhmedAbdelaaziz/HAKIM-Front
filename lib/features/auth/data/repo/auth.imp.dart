import 'package:front/core/cache/auth.dart';
import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/api.try_catch.dart';
import 'package:front/features/auth/data/models/user.dart';
import 'package:front/features/auth/data/source/auth.remote.dart';
import 'package:front/features/auth/domain/enitities/doctor.dart';
import 'package:front/features/auth/domain/enitities/patient.dart';
import 'package:front/features/auth/domain/enitities/user.dart';
import 'package:front/features/auth/domain/repo/auth.dart';

import '../source/auth.res.dart';

class AuthRepositoryImp implements AuthRepository {
  final AuthRemoteDataSource _remote;
  final AuthCache _local;

  AuthRepositoryImp(
      {required AuthRemoteDataSource remote, required AuthCache local})
      : _remote = remote,
        _local = local;

  @override
  Future<ApiResult<User>> getCurrentUser() async {
    callback() async {
      final response = await _remote.getMyProfile();
      return _checkUserKind(response);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<User>> createDoctor(AuthModel doctor) async {
    callback() async {
      final response = await _remote.createDoctor(doctor);

      await _local.cacheToken(response.token!);
      return _checkUserKind(response);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<User>> getUserById(String id) async {
    callback() async {
      final response = await _remote.getProfile(id);
      return _checkUserKind(response);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<User>> login(
      {required String login, required String password}) async {
    callback() async {
      final response = await _remote.login(login: login, password: password);

      await _local.cacheToken(response.token!);
      return _checkUserKind(response);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<User>> signUp(
      {required String email,
      required String name,
      required String password}) async {
    callback() async {
      final response =
          await _remote.signUp(email: email, name: name, password: password);

      await _local.cacheToken(response.token!);
      return _checkUserKind(response);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<bool>> logOut() async {
    callback() async {
      final data = await _local.removeToken();
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  ApiResult<User> _checkUserKind(AuthResponse response) {
    final kind = response.data!.kind;
    if (kind == "Doctor") {
      final data = Doctor.fromModel(response.data!);
      return ApiResult.sucess(data);
    }
    final data = Patient.fromModel(response.data!);
    return ApiResult.sucess(data);
  }
}
