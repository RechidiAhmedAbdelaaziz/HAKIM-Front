import 'package:front/core/networking/api.result.dart';
import 'package:front/core/networking/api.try_catch.dart';
import 'package:front/core/types/types.dart';

import 'package:front/features/donation/data/models/donation.dart';
import 'package:front/features/donation/data/source/donation.remote.dart';

import 'package:front/features/donation/domain/entity/donation.dart';

import '../../domain/repository/donation.dart';

class DonationRepositoryImp implements DonationRepository {
  final DonationRemoteDataSource _remote;

  DonationRepositoryImp({required DonationRemoteDataSource remote})
      : _remote = remote;

  @override
  FutureApi<List<Donation>> getDonations(int page) async {
    callback() async {
      final response = await _remote.getDonations(page);
      final data = response.data?.map((e) => Donation.fromModel(e)).toList();
      return ApiResult.sucess(data!);
    }

    return await TryCallApi(callback).call();
  }

  @override
  FutureApi<Donation> createDonation(DonationModel donation) async {
    callback() async {
      final response = await _remote.createDonation(donation);
      final data = Donation.fromModel(donation).copyWith(id: response.data!);
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  FutureApi<Donation> updateDonation(DonationModel donation) async {
    callback() async {
      final response = await _remote.updateDonation(donation.id!, donation);
      final data = Donation.fromModel(response.data);
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }

  @override
  FutureApi<Donation?> deleteDonation(DonationModel donation) async {
    callback() async {
      final response = await _remote.deleteDonation(donation.id!);
      if (!response.status!) return const ApiResult.sucess(null);
      final data = Donation.fromModel(donation);
      return ApiResult.sucess(data);
    }

    return await TryCallApi(callback).call();
  }
}
