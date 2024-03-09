import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/api.try_catch.dart';
import 'package:front/core/networking/info.dart';
import 'package:front/features/questions/data/models/question.dart';
import 'package:front/features/questions/data/source/question.local.dart';
import 'package:front/features/questions/data/source/question.remote.dart';
import 'package:front/features/questions/domain/entities/question.dart';
import 'package:front/features/questions/domain/repo/question.dart';

class QuestionRepositoryImpl implements QuestionRepository {
  final QuestionRemoteDataSource _remote;

  QuestionRepositoryImpl(
      {required QuestionRemoteDataSource remote,
      required QuestionLocalSourceData local,
      required NetworkInfo info})
      : _remote = remote;

  @override
  Future<ApiResult<List<Question>>> getAllQuestion(int page) async {
    callback() async {
      final data = await _remote.getAllQuestions(page);
      final questions = data.data?.map((e) => Question.fromModel(e)).toList();

      return ApiResult.sucess(questions ?? []);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Question>> addQuestion(QuestionModel question) async {
    callback() async {
      final response = await _remote.createQuestion(question);
      final data = Question.fromModel(question).copyWith(id: response.data!);
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Question?>> deleteQuestion(QuestionModel question) async {
    callback() async {
      final response = await _remote.deleteQuestion(question.id);
      if (!response.status!) return const ApiResult.sucess(null);
      return ApiResult.sucess(Question.fromModel(question));
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Question>> update(QuestionModel question) async {
    callback() async {
      final data = await _remote.updateQuestion(question.id, question);
      return ApiResult.sucess(Question.fromModel(data.data));
    }

    return await TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Question>> getQuestion(String id) async {
    callback() async {
      final response = await _remote.getQuestion(id);
      return ApiResult.sucess(Question.fromModel(response.data!));
    }

    return await TryCallApi(callback).call();
  }
}
