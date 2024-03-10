import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:front/core/cache/auth.dart';
import 'package:front/core/injection/dependency.dart';
import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../enitities/user.dart';
import '../repo/auth.dart';

part 'signup.g.dart';

@JsonSerializable()
class SignUpParams {
  final String email; 
  final String password;
  final String name;

  SignUpParams(
      {required this.email, required this.password, required this.name});
  Map<String, dynamic> toJson() => _$SignUpParamsToJson(this);
}

class SignUpUseCase extends UseCase<User, SignUpParams> {
  final AuthRepository _repository;
  final AuthCache _cache;

  SignUpUseCase(this._repository, this._cache);

  @override
  Future<ApiResult<User>> call(SignUpParams params) async {
    final result = await _repository.signUp(
      email: params.email,
      password: params.password,
      name: params.name,
    );

    locator<Dio>().options.headers.addAll({"Authorization": _cache.getToken()});

    return result;
  }
}
