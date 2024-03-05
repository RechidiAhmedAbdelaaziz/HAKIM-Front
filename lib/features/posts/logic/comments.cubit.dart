part of 'index.dart';

class CommentListCubit extends ListCubit<Comment> {
  final CommentUseCases _useCases;

  CommentListCubit(this._useCases);

  late String _postid;
  set post(String id) => _postid = id;

  late List<Comment> _comment;
  List<Comment> get comment => _comment;
  set element(Comment x) => _comment.add(x);

  int _nextPage = 0;

  @override
  Future<void> getList() async => await DoThis(
        _useCases.getAll,
        GetCommentsParams(page: _nextPage, postid: _postid),
        _geted,
      );
  void _geted(List<Comment> x) {
    if (x.isNotEmpty) {
      _comment.addAll(x);
      _nextPage += 1;
    }
    emitLoaded(_comment);
  }

  @override
  Future<void> create(Comment x) async =>
      await DoThis(_useCases.create, x, _created);
  void _created(Comment x) {
    _comment.add(x);
    emitLoaded(_comment);
  }

  @override
  Future<void> delete(Comment x) async =>
      await DoThis(_useCases.delete, x, _deleted);
  void _deleted(Comment x) {
    _comment.remove(x);
    emitDeleted();
  }
}
