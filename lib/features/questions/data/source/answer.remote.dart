import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:front/core/networking/res.model.dart';
import 'package:front/features/questions/data/models/answer.dart';
import 'package:retrofit/http.dart';
import '../models/answer.res.dart';

part 'answer.remote.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class AnswerRemoteDataSource {
  factory AnswerRemoteDataSource(Dio dio, {String baseUrl}) =
      _AnswerRemoteDataSource;

  //Get All
  @GET("${ApiConsts.questions}/{id}/answer")
  Future<AnswerListResponse> getAllAnswers(
    @Path("id") String id,
  );

  //Create Answer
  @POST("${ApiConsts.questions}/{id}/answer")
  Future<AnswerResponse> createAnswer(
    @Path("id") String id,
    @Body() AnswerModel answer,
  );

  //Update Answer
  @POST("${ApiConsts.answers}/{id}")
  Future<AnswerResponse> updateAnswer(
    @Path("id") String id,
    @Body() AnswerModel update,
  );

  //Delete Answer
  @DELETE("${ApiConsts.answers}/{id}")
  Future<DefaultResponse> deleteAnswer(
    @Path("id") String id,
  );
}
