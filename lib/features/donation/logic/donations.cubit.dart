part of 'index.dart';

class DonationListCubit extends ListCubit<Donation> {
  DonationListCubit(this._cases);
  final DonationUseCases _cases;

  final List<Donation> _donations = [];
  List<Donation> get donations => _donations;
  @override
  Future<void> create(Donation x) => doThis(_cases.create, x, (x) {
        _donations.add(x);
        emitLoaded(_donations);
      });

  @override
  Future<void> delete(Donation x) => doThis(_cases.delete, x, _deleted);

  void _deleted(Donation? x) {
    _donations.remove(x);
    emitLoaded(_donations);
  }

  int _next = 1;
  bool _max = false;
  set max(bool x) => _max = x;
  @override
  Future<void> getList() {
    if (!_max) return doThis(_cases.getAll, _next, _geted);
    return Future.value();
  }

  void _geted(List<Donation> x) {
    if (x.isNotEmpty) {
      _donations.addAll(x);
      _next++;
      emitLoaded(x);
    }
    _max = true;
  }
}
