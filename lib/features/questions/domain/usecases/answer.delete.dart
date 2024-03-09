import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/questions/domain/repo/answer.dart';

import '../entities/answer.dart';

class DeleteAnswerUseCase extends UseCase<Answer?, Answer> {
  final AnswerRepository _repository;

  DeleteAnswerUseCase(this._repository);

  @override
  Future<ApiResult<Answer?>> call(Answer params) async =>
      await _repository.deleteAnswer(params.toModel());
}
