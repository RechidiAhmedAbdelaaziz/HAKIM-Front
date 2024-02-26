import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:front/features/posts/domain/repositories/comment.dart';
import 'package:retrofit/http.dart';
import 'comment.res.dart';

part 'comment.remote.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class CommentRemoteDataSource {
  factory CommentRemoteDataSource(Dio dio, {String baseUrl}) =
      _CommentRemoteDataSource;

  //Get All
  @GET("${ApiConsts.posts}/{id}/comments")
  Future<CommentListResponse> getAllComments(
    @Path("id") String id,
    @Query('page') int page,
  );

  //Create Comment
  @POST("${ApiConsts.posts}/{id}/comments")
  Future<CommentResponse> createComment(
    @Body() CommentRequestBody comment,
    @Path("id") String id,
  );

  //Get Comment
  @GET("${ApiConsts.comments}/{id}")
  Future<CommentResponse> getComment(@Path("id") String id);

  //Update Comment
  @POST("${ApiConsts.comments}/{id}")
  Future<CommentResponse> updateComment(
    @Body() CommentRequestBody comment,
    @Path("id") String id,
  );

  //Delete Comment
  @DELETE("${ApiConsts.comments}/{id}")
  Future<CommentResponse> deleteComment(@Path("id") String id);
}
