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
  final AnswerLocalDataSource _local;
  final NetworkInfo _info;

  AnswerRepositoryImp(
      {required AnswerRemoteDataSource remote,
      required AnswerLocalDataSource local,
      required NetworkInfo info})
      : _remote = remote,
        _local = local,
        _info = info;

  @override
  Future<ApiResult<List<Answer>>> getAnswers(String questionId) {
    callback() async {
      final response = await _remote.getAllAnswers(questionId);
      final data = response.data!.map((e) => Answer.fromModel(e)).toList();
      return ApiResult.sucess(data);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Answer>> createAnswer(AnswerModel answer) {
    callback() async {
      final response = await _remote.createAnswer(answer.question, answer);
      return ApiResult.sucess(Answer.fromModel(response.data!));
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<void>> deleteAnswer(AnswerModel answer) {
    callback() async {
      await _remote.deleteAnswer(answer.id);
      return const ApiResult.sucess(null);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Answer>> updateAnswer(AnswerModel answer) {
    callback() async {
      final response = await _remote.updateAnswer(answer.question, answer);
      return ApiResult.sucess(Answer.fromModel(response.data!));
    }

    return TryCallApi(callback).call();
  }
}
