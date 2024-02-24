// ignore_for_file: avoid_renaming_method_parameters

import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../enitities/user.dart';
import '../repo/auth.dart';

class GetMyProfileUseCase extends UseCaseEmpty<User> {
  final AuthRepository _repository;

  GetMyProfileUseCase(
    this._repository,
  );

  @override
  Future<ApiResult<User>> call() async {
    return await _repository.getCurrentUser();
  }
}
