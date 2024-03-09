import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../entity/donation.dart';
import '../repository/donation.dart';

class DeleteDonationUseCase implements UseCase<Donation?, Donation> {
  final DonationRepository _repository;

  DeleteDonationUseCase(this._repository);

  @override
  Future<ApiResult<Donation?>> call(Donation params) async {
    return await _repository.deleteDonation(params.toModel());
  }
}
