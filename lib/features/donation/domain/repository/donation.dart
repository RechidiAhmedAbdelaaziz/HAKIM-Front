import 'package:front/core/types/types.dart';
import 'package:front/features/donation/data/models/donation.dart';

import '../entity/donation.dart';

abstract class DonationRepository {
  FutureApi<List<Donation>> getDonations(int page);
  FutureApi<String> createDonation(DonationModel donation);
  FutureApi<Donation> updateDonation(DonationModel donation);
  FutureApi<bool> deleteDonation(String id);
}
