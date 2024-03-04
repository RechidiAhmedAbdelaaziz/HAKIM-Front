import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../entity/donation.dart';
import '../repository/donation.dart';

class GetAllDonationsUseCase implements UseCase<List<Donation>, int> {
  final DonationRepository _repository;

  GetAllDonationsUseCase(this._repository);

  @override
  Future<ApiResult<List<Donation>>> call(int params) async {
    return await _repository.getDonations(params);
  }
}
