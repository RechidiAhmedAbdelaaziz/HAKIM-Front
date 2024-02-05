import 'package:freezed_annotation/freezed_annotation.dart';
part 'api.result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.sucess(T data) = _Sucess<T>;
  const factory ApiResult.failure(String message) = _Failure<T>;
}
