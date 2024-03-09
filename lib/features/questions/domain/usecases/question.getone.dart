import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/questions/domain/repo/question.dart';

import '../entities/question.dart';

class GetQuestionByIdUseCase extends UseCase<Question, String> {
  final QuestionRepository _repository;

  GetQuestionByIdUseCase(this._repository);
  @override
  Future<ApiResult<Question>> call(String params) async =>
      await _repository.getQuestion(params);
}
