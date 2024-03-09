import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/questions/domain/repo/question.dart';

import '../entities/question.dart';

class CreateQuestionUseCase extends UseCase<Question, Question> {
  final QuestionRepository _repository;

  CreateQuestionUseCase(this._repository);

  @override
  Future<ApiResult<Question>> call(Question params) async {
    return await _repository.addQuestion(params.toModel());
  }
}
