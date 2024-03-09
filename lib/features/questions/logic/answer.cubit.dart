part of "index.dart";

class AnswerCubit extends AppCubit<Answer> {
  AnswerCubit(this._cases);
  final AnswerUseCases _cases;

  late Answer answer;

  Future<void> update() => doThis(_cases.update, answer, _geted);

  void _geted(Answer x) {
    answer = x;
    emitLoaded(answer);
  }
}
