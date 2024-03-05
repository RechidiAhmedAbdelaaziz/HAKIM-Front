part of 'index.dart';

class CommentCubit extends AppCubit<Comment> {
  CommentCubit(this._cases);
  final CommentUseCases _cases;

  late Comment _comment;
  Comment get comment => _comment;

  Future<void> get(String x) async => await DoThis(_cases.getOne, x, _geted);
  Future<void> update() async => await DoThis(_cases.update, _comment, _geted);

  void _geted(Comment x) {
    _comment = x;
    emitLoaded(x);
  }
}
