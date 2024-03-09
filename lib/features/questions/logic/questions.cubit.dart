part of 'index.dart';

class QuestionListCubit extends ListCubit<Question> {
  final QuestionUseCases _cases;

  QuestionListCubit(this._cases);

  final List<Question> _questions = [];
  List<Question> get question => _questions;

  @override
  Future<void> create(Question x) => doThis(_cases.create, x, _created);
  void _created(Question x) {
    _questions.add(x);
    emitLoaded(_questions);
  }

  @override
  Future<void> delete(Question x) => doThis(_cases.delete, x, _deleted);
  void _deleted(Question? x) {
    if (x != null) {
      _questions.remove(x);
    }
    emitDeleted(_questions);
  }

  int _nexPage = 1;
  @override
  Future<void> getList() => doThis(_cases.getAll, _nexPage, _geted);
  void _geted(List<Question> x) {
    if (x.isNotEmpty) {
      _questions.addAll(x); //TODO remove dublicats
      _nexPage++;
    }
    emitLoaded(_questions);
  }
}
