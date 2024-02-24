import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:retrofit/http.dart';
import '../models/comment.dart';
import '../models/comment.res.dart';

part 'comment.remote.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class CommentRemoteDataSource {
  factory CommentRemoteDataSource(Dio dio, {String baseUrl}) =
      _CommentRemoteDataSource;

  //Get All
  @GET(ApiConsts.comments)
  Future<CommentListResponse> getAllComments();

  //Create Comment
  @POST("${ApiConsts.posts}/{id}/comment")
  Future<CommentResponse> createComment(
    @Body() CommentModel comment,
    @Path("id") String id,
  );

  //Update Comment
  @POST("${ApiConsts.comments}/{id}")
  Future<CommentResponse> updateComment(
    @Path("id") String id,
    @Body() CommentModel update,
  );

  //Delete Comment
  @DELETE("${ApiConsts.comments}/{id}")
  Future<CommentResponse> deleteComment(
    @Path("id") String id,
  );
}
