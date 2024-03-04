import 'package:front/core/networking/api.result.dart';
import 'package:front/core/usecase/usecase.dart';

import '../repository/donation.dart';

class DeleteDonationUseCase implements UseCase<bool, String> {
  final DonationRepository _repository;

  DeleteDonationUseCase(this._repository);

  @override
  Future<ApiResult<bool>> call(String params) async {
    return await _repository.deleteDonation(params);
  }
}
