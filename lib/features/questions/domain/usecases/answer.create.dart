import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/questions/domain/repo/answer.dart';

import '../entities/answer.dart';

class CreateAnswerUseCase extends UseCase<String?, Answer> {
  final AnswerRepository _repository;

  CreateAnswerUseCase(this._repository);

  @override
  Future<ApiResult<String?>> call(Answer params) async =>
      await _repository.createAnswer(params.toModel());
}
