import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:front/core/networking/res.model.dart';
import 'package:front/features/posts/data/models/post.dart';
import 'package:retrofit/http.dart';
import '../models/post.res.dart';

part 'post.remote.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class PostRemoteDataSource {
  factory PostRemoteDataSource(Dio dio, {String baseUrl}) =
      _PostRemoteDataSource;

  //Get All
  @GET(ApiConsts.posts)
  Future<PostListResponse> getAllPosts();

  //Create Post
  @POST(ApiConsts.posts)
  Future<DefaultResponse> createPost(
    @Body() PostModel post,
  );

  //Update Post
  @POST("${ApiConsts.posts}/{id}")
  Future<DefaultResponse> updatePost(
    @Path("id") String id,
    @Body() PostModel update,
  );

  //Delete Post
  @DELETE("${ApiConsts.posts}/{id}")
  Future<DefaultResponse> deletePost(
    @Path("id") String id,
  );

  //Like Post
  @POST("${ApiConsts.posts}/{id}/like")
  Future<DefaultResponse> like(
    @Path("id") String id,
  );

  //UnLike Post
  @POST("${ApiConsts.posts}/{id}/like")
  Future<DefaultResponse> unLike(
    @Path("id") String id,
  );
}
