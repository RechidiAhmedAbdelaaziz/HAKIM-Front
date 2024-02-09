import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/api.try_catch.dart';
import 'package:front/core/networking/info.dart';
import 'package:front/features/location/data/source/location.remote.dart';
import 'package:front/features/location/domain/entity/loaction.dart';
import 'package:front/features/location/domain/repo/location.dart';

class LocationRepositoryImp implements LocationRepository {
  LocationRepositoryImp(
      {required LocationRemoteDataSource remote,
      required NetworkInfo networkInfo})
      : _remote = remote,
        _networkInfo = networkInfo;

  final LocationRemoteDataSource _remote;
  final NetworkInfo _networkInfo;

  @override
  Future<ApiResult<List<Location>>> getLocations(String drID) {
    callback() async {
      final response = await _remote.getLocations(drID);
      final data = response.data!.map((e) => Location.fromModel(e)).toList();
      return ApiResult.sucess(data);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Location>> getLocation(String id) {
    callback() async {
      final response = await _remote.getLocation(id);
      final data = Location.fromModel(response.data!);
      return ApiResult.sucess(data);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Location>> createLocation(Location location) {
    callback() async {
      final response = await _remote.createLocation(location.toModel());
      final data = Location.fromModel(response.data!);
      return ApiResult.sucess(data);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<void>> deleteLocation(Location location) {
    callback() async {
      await _remote.deleteLocation(location.id);
      return const ApiResult.sucess(null);
    }

    return TryCallApi(callback).call();
  }

  @override
  Future<ApiResult<Location>> updateLocation(Location location) {
    callback() async {
      final response =
          await _remote.updateLocation(location.id, location.toModel());
      final data = Location.fromModel(response.data!);
      return ApiResult.sucess(data);
    }

    return TryCallApi(callback).call();
  }
}
