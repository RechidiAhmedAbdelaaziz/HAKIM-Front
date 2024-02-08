part of 'comment_cubit.dart';

@freezed
class CommentState with _$CommentState {
    const factory CommentState.initial() = _Initial;
  const factory CommentState.loading() = _Loading;
  const factory CommentState.loaded(Comment comment) = _Loaded;
  const factory CommentState.deleted() = _Deleted;
  const factory CommentState.error(ErrorHandler error) = _Error;
}
