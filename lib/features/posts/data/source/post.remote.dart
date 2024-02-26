import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:front/core/networking/res.model.dart';
import 'package:front/features/posts/domain/repositories/post.dart';
import 'package:retrofit/http.dart';
import '../models/post.res.dart';

part 'post.remote.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class PostRemoteDataSource {
  factory PostRemoteDataSource(Dio dio, {String baseUrl}) =
      _PostRemoteDataSource;

  //Get All Posts
  @GET(ApiConsts.posts)
  Future<PostListResponse> getAllPosts(@Query('page') int page);

  //Get My Posts
  @GET("${ApiConsts.posts}/my")
  Future<PostListResponse> getMyPosts(@Query('page') int page);

  //Get User Posts
  @GET("${ApiConsts.posts}/{id}")
  Future<PostListResponse> getUserPosts(
    @Path('id') String id,
    @Query('page') int page,
  );

  //Create Post
  @POST(ApiConsts.posts)
  Future<PostResponse> createPost(@Body() PostRequestBody post);

  //Update Post
  @POST("${ApiConsts.posts}/{id}")
  Future<PostResponse> updatePost(
    @Path("id") String id,
    @Body() PostRequestBody update,
  );

  //Delete Post
  @DELETE("${ApiConsts.posts}/{id}")
  Future<PostResponse> deletePost(@Path("id") String id);

  //Like Post
  @POST("${ApiConsts.posts}/{id}/like")
  Future<DefaultResponse> like(@Path("id") String id);

  //UnLike Post
  @DELETE("${ApiConsts.posts}/{id}/like")
  Future<DefaultResponse> unLike(
    @Path("id") String id,
  );
}
