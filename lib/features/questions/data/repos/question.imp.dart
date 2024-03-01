import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/api.try_catch.dart';
import 'package:front/core/networking/info.dart';
import 'package:front/features/questions/data/models/question.dart';
import 'package:front/features/questions/data/source/question.local.dart';
import 'package:front/features/questions/data/source/question.remote.dart';
import 'package:front/features/questions/domain/entities/question.dart';
import 'package:front/features/questions/domain/repo/question.dart';

class QuestionRepositoryImp implements QuestionRepository {
  final QuestionRemoteDataSource _remote;

  QuestionRepositoryImp(
      {required QuestionRemoteDataSource remote,
      required QuestionLocalDataSource local,
      required NetworkInfo info})
      : _remote = remote;

  @override
  Future<ApiResult<List<Question>>> getAllQuestion(int page) {
    callback() async {
      final data = await _remote.getAllQuestions(page);
      final questions = data.data?.map((e) => Question.fromModel(e)).toList();

      return ApiResult.sucess(questions ?? []);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Question>> addQuestion(QuestionModel question) {
    callback() async {
      final data = await _remote.createQuestion(question);
      return ApiResult.sucess(Question.fromModel(data.data));
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<void>> deleteQuestion(Question question) {
    callback() async {
      await _remote.deleteQuestion(question.id);
      return const ApiResult.sucess(null);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Question>> update(QuestionModel question) {
    callback() async {
      final data = await _remote.updateQuestion(question.id, question);
      return ApiResult.sucess(Question.fromModel(data.data));
    }

    return TryCallApi(callback).call();
  }
}
