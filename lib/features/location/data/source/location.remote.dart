import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:front/features/location/data/models/location.dart';
import 'package:retrofit/http.dart';
import '../models/location.res.dart';

part 'location.remote.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class LocationRemoteDataSource {
  factory LocationRemoteDataSource(Dio dio, {String baseUrl}) =
      _LocationRemoteDataSource;

  //Get Locations of Dr
  @GET("${ApiConsts.location}/dr/{id}")
  Future<LocationListResponse> getLocations(
    @Path("id") String id,
  );

  //Get Location
  @GET("${ApiConsts.location}/{id}")
  Future<LocationResponse> getLocation(
    @Path("id") String id,
  );

  //Create Location
  @POST(ApiConsts.location)
  Future<LocationResponse> createLocation(
    @Body() LocationModel location,
  );

  //Update Location
  @POST("${ApiConsts.location}/{id}")
  Future<LocationResponse> updateLocation(
    @Path("id") String id,
    @Body() LocationModel location,
  );

  //Delete Location
  @DELETE("${ApiConsts.location}/{id}")
  Future<LocationResponse> deleteLocation(
    @Path("id") String id,
  );
}
