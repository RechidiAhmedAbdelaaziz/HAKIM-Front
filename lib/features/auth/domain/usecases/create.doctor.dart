// ignore_for_file: avoid_renaming_method_parameters

import 'package:dio/dio.dart';
import 'package:front/core/cache/auth.dart';
import 'package:front/core/injection/dependency.dart';
import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/auth/data/models/user.dart';

import '../enitities/user.dart';
import '../repo/auth.dart';

class CreateDoctorUseCase extends UseCaseWithParams<User, AuthModel> {
  final AuthRepository _repository;
  final AuthCache _cache;

  CreateDoctorUseCase(
    this._repository,
    this._cache,
  );

  @override
  Future<ApiResult<User>> call(AuthModel doctor) async {
    final result = await _repository.createDoctor(doctor);

    locator<Dio>().options.headers.addAll({"Authorization": _cache.getToken()});

    return result;
  }
}
