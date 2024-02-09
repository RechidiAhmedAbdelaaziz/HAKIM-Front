import 'package:front/core/networking/api.result.dart';
import 'package:front/features/location/domain/entity/loaction.dart';

abstract class LocationRepository {
  Future<ApiResult<List<Location>>> getLocations(String drID);
  Future<ApiResult<Location>> getLocation(String id);
  Future<ApiResult<Location>> createLocation(Location location);
  Future<ApiResult<Location>> updateLocation(Location location);
  Future<ApiResult<void>> deleteLocation(Location location);
}
