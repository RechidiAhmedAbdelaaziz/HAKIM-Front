part of 'index.dart';

class CommentCubit extends AppCubit<Comment> {
  CommentCubit(this._cases);
  final CommentUseCases _cases;

  late Comment _comment;

  Future<void> get(String x) async => await doThis(_cases.getOne, x, _geted);
  Future<void> update() async => await doThis(_cases.update, _comment, _geted);

  void _geted(Comment x) {
    _comment = x;
    emitLoaded(x);
  }
}
