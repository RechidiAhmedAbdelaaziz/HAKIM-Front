import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/questions/domain/repo/question.dart';

import '../entities/question.dart';

class DeleteQuestionUseCase extends UseCase<bool, Question> {
  final QuestionRepository _repository;

  DeleteQuestionUseCase(this._repository);

  @override
  Future<ApiResult<bool>> call(Question params) async {
    return await _repository.deleteQuestion(params.toModel());
  }
}
