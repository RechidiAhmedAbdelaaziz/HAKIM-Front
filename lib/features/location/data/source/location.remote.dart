import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:front/features/location/data/models/location.dart';
import 'package:retrofit/http.dart';
import '../models/location.res.dart';

part 'location.remote.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class LocationRemoteDataSource {
  factory LocationRemoteDataSource(Dio dio, {String baseUrl}) =
      _LocationRemoteDataSource;

  //Get Locations of Dr
  @GET("${ApiConstants.location}/dr/{id}")
  Future<LocationListResponse> getLocations(
    @Path("id") String id,
  );

  //Get Location
  @GET("${ApiConstants.location}/{id}")
  Future<LocationResponse> getLocation(
    @Path("id") String id,
  );

  //Create Location
  @POST(ApiConstants.location)
  Future<LocationResponse> createLocation(
    @Body() LocationModel location,
  );

  //Update Location
  @POST("${ApiConstants.location}/{id}")
  Future<LocationResponse> updateLocation(
    @Path("id") String id,
    @Body() LocationModel location,
  );

  //Delete Location
  @DELETE("${ApiConstants.location}/{id}")
  Future<LocationResponse> deleteLocation(
    @Path("id") String id,
  );
}
