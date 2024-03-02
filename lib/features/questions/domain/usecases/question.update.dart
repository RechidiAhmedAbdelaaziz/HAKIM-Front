import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/questions/domain/repo/question.dart';

import '../entities/question.dart';

class UpdateQuestionUseCase extends UseCase<Question, Question> {
  final QuestionRepository _repository;

  UpdateQuestionUseCase(this._repository);

  @override
  Future<ApiResult<Question>> call(Question params) async {
    return await _repository.update(params.toModel());
  }
}
