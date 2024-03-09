part of 'index.dart';

class DonationCubit extends AppCubit<Donation> {
  DonationCubit(this._cases);
  final DonationUseCases _cases;

  late Donation donation;

  Future<void> update() => doThis(_cases.edit, donation, _geted);
  void _geted(Donation x) {
    donation = x;
    emitLoaded(x);
  }
}
