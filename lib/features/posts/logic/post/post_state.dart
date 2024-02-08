part of 'post_cubit.dart';

@freezed
class PostState with _$PostState {
  const factory PostState.initial() = _Initial;
  const factory PostState.loading() = _Loading;
  const factory PostState.loaded(Post post) = _Loaded;
  const factory PostState.deleted() = _Deleted;
  const factory PostState.error(ErrorHandler error) = _Error;
}
