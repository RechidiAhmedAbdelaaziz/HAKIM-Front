import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:front/core/cache/auth.dart';
import 'package:front/core/injection/dependency.dart';
import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/auth/domain/enitities/user.dart';
import 'package:front/features/auth/domain/repo/auth.dart';

part 'login.g.dart';

@JsonSerializable()
class LoginParams {
  final String login;
  final String password;

  LoginParams({required this.login, required this.password});
  factory LoginParams.fromJson(Map<String, dynamic> json) => _$LoginParamsFromJson(json);
     Map<String, dynamic> toJson() => _$LoginParamsToJson(this);

}

class LoginUseCase extends UseCase<User, LoginParams> {
  final AuthRepository _repository;
  final AuthCache _cache;

  LoginUseCase(this._repository, this._cache);

  @override
  Future<ApiResult<User>> call(LoginParams params) async {
    final result =
        await _repository.login(login: params.login, password: params.password);

    locator<Dio>().options.headers.addAll({"Authorization": _cache.getToken()});

    return result;
  }
}
