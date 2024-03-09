export 'donation.delete.dart';
export 'donation.list.dart';
export 'edit.donation.dart';
export 'request.donation.dart';

import 'donation.delete.dart';
import 'donation.list.dart';
import 'edit.donation.dart';
import 'request.donation.dart';

class DonationUseCases {
  final CreateDonationUseCase create;
  final DeleteDonationUseCase delete;
  final EditDonationUseCase edit;
  final GetAllDonationsUseCase getAll;

  DonationUseCases(
      {required this.create,
      required this.delete,
      required this.edit,
      required this.getAll});
}
