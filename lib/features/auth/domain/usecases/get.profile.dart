// ignore_for_file: avoid_renaming_method_parameters

import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../enitities/user.dart';
import '../repo/auth.dart';

class GetProfileUseCase extends UseCase<User, String> {
  final AuthRepository _repository;

  GetProfileUseCase(
    this._repository,
  );

  @override
  Future<ApiResult<User>> call(String id) async {
    return await _repository.getUserById(id);
  }
}
