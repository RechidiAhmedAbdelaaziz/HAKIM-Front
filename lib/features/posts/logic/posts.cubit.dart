part of 'index.dart';

class PostListCubit extends ListCubit<Post> {
  PostListCubit(this._cases);

  final PostUseCases _cases;

  final List<Post> _posts = [];

  int _page = 0;

  @override
  Future<void> getList() async => await doThis(
        _cases.getAll,
        _page + 1,
        _geted,
      );
  Future<void> getUserList(String id) async => await doThis(
        _cases.getUser,
        GetUserPostParams(page: _page + 1, id: id),
        _geted,
      );
  Future<void> getMyList() async => await doThis(
        _cases.getMy,
        _page + 1,
        _geted,
      );

  void _geted(List<Post> x) {
    if (x.isNotEmpty) {
      _posts.addAll(x);
      _page += 1;
    }
    emitLoaded(x);
  }

  @override
  Future<void> create(Post x) async => await doThis(_cases.create, x, _created);
  void _created(Post x) {
    _posts.add(x);
    emitLoaded(_posts);
  }

  @override
  Future<void> delete(Post x) async => await doThis(_cases.delete, x, _deleted);
  void _deleted(Post x) {
    _posts.remove(x);
    emitLoaded(_posts);
  }
}
