part of 'index.dart';

class CommentListCubit extends ListCubit<Comment> {
  final CommentUseCases _useCases;

  CommentListCubit(this._useCases);

  late String _postid;
  set post(String id) => _postid = id;

  late List<Comment> _comments;

  int _nextPage = 0;

  @override
  Future<void> getList() async => await doThis(
        _useCases.getAll,
        GetCommentsParams(page: _nextPage, postid: _postid),
        _geted,
      );
  void _geted(List<Comment> x) {
    if (x.isNotEmpty) {
      _comments.addAll(x);
      _nextPage += 1;
    }
    emitLoaded(_comments);
  }

  @override
  Future<void> create(Comment x) async =>
      await doThis(_useCases.create, x, _created);
  void _created(Comment x) {
    _comments.add(x);
    emitLoaded(_comments);
  }

  @override
  Future<void> delete(Comment x) async =>
      await doThis(_useCases.delete, x, _deleted);
  void _deleted(Comment x) {
    _comments.remove(x);
    emitLoaded(_comments);
  }
}
