part of "index.dart";

class AnswerListCubit extends ListCubit<Answer> {
  AnswerListCubit(this._cases);

  final AnswerUseCases _cases;

  final List<Answer> _answers = [];
  List<Answer> get answers => _answers;

  late final String _question;
  set question(String x) => _question = x;

  @override
  Future<void> create(Answer x) => doThis(_cases.create, x, _created);
  void _created(Answer x) {
    _answers.add(x);
    emitLoaded(_answers);
  }

  @override
  Future<void> delete(Answer x) => doThis(_cases.delete, x, _deleted);
  void _deleted(Answer? x) {
    _answers.remove(x);
    emitLoaded(_answers);
  }

  int _next = 1;
  @override
  Future<void> getList() => doThis(
        _cases.getAll,
        GetQuestionAnswersParams(_question, _next),
        _geted,
      );
  void _geted(List<Answer> x) {
    if (x.isNotEmpty) {
      _answers.addAll(x); //TODO Remove dublicated answers
      _next++;
    }
    emitLoaded(_answers);
  }
}
