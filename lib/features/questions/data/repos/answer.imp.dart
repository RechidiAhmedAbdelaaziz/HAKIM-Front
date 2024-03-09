import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/api.try_catch.dart';
import 'package:front/core/networking/info.dart';
import 'package:front/features/questions/data/models/answer.dart';
import 'package:front/features/questions/data/source/answer.local.dart';
import 'package:front/features/questions/data/source/answer.remote.dart';
import 'package:front/features/questions/domain/entities/answer.dart';
import 'package:front/features/questions/domain/repo/answer.dart';

class AnswerRepositoryImp implements AnswerRepository {
  final AnswerRemoteDataSource _remote;

  AnswerRepositoryImp(
      {required AnswerRemoteDataSource remote,
      required AnswerLocalDataSource local,
      required NetworkInfo info})
      : _remote = remote;

  @override
  Future<ApiResult<List<Answer>>> getAnswers(String questionId, int page) {
    callback() async {
      final response = await _remote.getAllAnswers(questionId);
      final data = response.data?.map((e) => Answer.fromModel(e)).toList();
      return ApiResult.sucess(data ?? []);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Answer>> createAnswer(AnswerModel answer) {
    callback() async {
      final response = await _remote.createAnswer(answer.question, answer);
      final data = Answer.fromModel(answer).copyWith(id: response.data!);
      return ApiResult.sucess(data);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Answer?>> deleteAnswer(AnswerModel answer) {
    callback() async {
      final response = await _remote.deleteAnswer(answer.id);
      if (!response.status!) return const ApiResult.sucess(null);
      final data = Answer.fromModel(answer);
      return ApiResult.sucess(data);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Answer>> updateAnswer(AnswerModel answer) {
    callback() async {
      final response = await _remote.updateAnswer(answer.question, answer);
      return ApiResult.sucess(Answer.fromModel(response.data));
    }

    return TryCallApi(callback).call();
  }
}
