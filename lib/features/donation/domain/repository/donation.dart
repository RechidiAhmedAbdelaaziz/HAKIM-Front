import 'package:front/core/types/types.dart';
import 'package:front/features/donation/data/models/donation.dart';

import '../entity/donation.dart';

abstract class DonationRepository {
  FutureApi<List<Donation>> getDonations(int page);
  FutureApi<Donation> createDonation(DonationModel donation);
  FutureApi<Donation> updateDonation(DonationModel donation);
  FutureApi<Donation?> deleteDonation(DonationModel donation);
}
