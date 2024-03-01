import 'package:front/core/networking/api.result.dart';
import 'package:front/features/questions/data/models/answer.dart';
import 'package:front/features/questions/domain/entities/answer.dart';

abstract class AnswerRepository {
  Future<ApiResult<List<Answer>>> getAnswers(String questionId, int page);
  Future<ApiResult<Answer>> createAnswer(AnswerModel answer);
  Future<ApiResult<Answer>> updateAnswer(AnswerModel answer);
  Future<ApiResult<void>> deleteAnswer(AnswerModel answer);
}
