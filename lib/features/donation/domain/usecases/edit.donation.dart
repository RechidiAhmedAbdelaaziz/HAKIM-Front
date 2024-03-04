import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../entity/donation.dart';
import '../repository/donation.dart';

class EditDonationUseCase implements UseCase<Donation, Donation> {
  final DonationRepository _repository;

  EditDonationUseCase(this._repository);

  @override
  Future<ApiResult<Donation>> call(Donation params) async {
    return await _repository.updateDonation(params.toModel());
  }
}
