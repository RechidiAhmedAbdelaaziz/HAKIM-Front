part of "index.dart";

class QuestionCubit extends AppCubit<Question> {
  QuestionCubit(this._cases);
  final QuestionUseCases _cases;

  late Question question;

  Future<void> update() => doThis(_cases.update, question, _geted);
  Future<void> get(String id) => doThis(_cases.get, id, _geted);
  void _geted(Question x) {
    question = x;
    emitLoaded(x);
  }
}
