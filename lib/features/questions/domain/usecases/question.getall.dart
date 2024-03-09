import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';
import 'package:front/features/questions/domain/repo/question.dart';

import '../entities/question.dart';

class GetAllQuestionUseCase extends UseCase<List<Question>, int> {
  final QuestionRepository _repository;

  GetAllQuestionUseCase(this._repository);

  @override
  Future<ApiResult<List<Question>>> call(int params) async {
    return await _repository.getAllQuestion(params);
  }
}
