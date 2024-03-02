import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../entities/answer.dart';
import '../repo/answer.dart';

class GetQuestionAnswersParams {
  final String questionId;
  final int page;

  GetQuestionAnswersParams(this.questionId, this.page);
}

class GetQuestionAnswersUseCase
    extends UseCase<List<Answer>, GetQuestionAnswersParams> {
  final AnswerRepository _repository;

  GetQuestionAnswersUseCase(this._repository);

  @override
  Future<ApiResult<List<Answer>>> call(GetQuestionAnswersParams params) {
    return _repository.getAnswers(params.questionId, params.page);
  }
}
