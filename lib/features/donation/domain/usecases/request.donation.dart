import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../entity/donation.dart';
import '../repository/donation.dart';

class CreateDonationUseCase implements UseCase<Donation, Donation> {
  final DonationRepository _repository;

  CreateDonationUseCase(this._repository);

  @override
  Future<ApiResult<Donation>> call(Donation params) async {
    return await _repository.createDonation(params.toModel());
  }
}
