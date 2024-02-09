import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:front/core/networking/res.model.dart';
import 'package:front/features/posts/data/models/post.dart';
import 'package:retrofit/http.dart';
import '../models/post.res.dart';

part 'post.remote.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class PostRemoteDataSource {
  factory PostRemoteDataSource(Dio dio, {String baseUrl}) =
      _PostRemoteDataSource;

  //Get All
  @GET(ApiConstants.posts)
  Future<PostListResponse> getAllPosts();

  //Create Post
  @POST(ApiConstants.posts)
  Future<DefaultResponse> createPost(
    @Body() PostModel post,
  );

  //Update Post
  @POST("${ApiConstants.posts}/{id}")
  Future<DefaultResponse> updatePost(
    @Path("id") String id,
    @Body() PostModel update,
  );

  //Delete Post
  @DELETE("${ApiConstants.posts}/{id}")
  Future<DefaultResponse> deletePost(
    @Path("id") String id,
  );

  //Like Post
  @POST("${ApiConstants.posts}/{id}/like")
  Future<DefaultResponse> like(
    @Path("id") String id,
  );

  //UnLike Post
  @POST("${ApiConstants.posts}/{id}/like")
  Future<DefaultResponse> unLike(
    @Path("id") String id,
  );
}
