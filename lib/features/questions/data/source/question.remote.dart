import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:front/core/networking/res.model.dart';
import 'package:front/features/questions/data/models/question.dart';
import 'package:retrofit/http.dart';

import 'question.res.dart';

part 'question.remote.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class QuestionRemoteDataSource {
  factory QuestionRemoteDataSource(Dio dio, {String baseUrl}) =
      _QuestionRemoteDataSource;

  //Get All
  @GET(ApiConsts.questions)
  Future<QuestionListResponse> getAllQuestions(
    @Query('page') int? page,
  );

  //Get One
  @GET("${ApiConsts.questions}/{id}")
  Future<QuestionResponse> getQuestion(
    @Path('id') String id,
  );

  //Create Question
  @POST(ApiConsts.questions)
  Future<QuestionIdResponse> createQuestion(
    @Body() QuestionModel? question,
  );

  //Update Question
  @POST("${ApiConsts.questions}/{id}")
  Future<QuestionResponse> updateQuestion(
    @Path("id") String? id,
    @Body() QuestionModel? update,
  );

  //Delete Question
  @DELETE("${ApiConsts.questions}/{id}")
  Future<ElementIdResponse> deleteQuestion(
    @Path("id") String? id,
  );
}
