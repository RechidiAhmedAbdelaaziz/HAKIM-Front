import 'package:dio/dio.dart';
import 'package:front/features/donation/data/repository/donation.imp.dart';
import 'package:front/features/donation/data/source/donation.remote.dart';
import 'package:front/features/donation/domain/repository/donation.dart';
import 'package:front/features/donation/domain/usecases/index.dart';

import '../dependency.dart';

part 'donation.depns.dart';
part 'donation.usecases.dart';


Future setUpDonationDependencies() async {
  _setUpDonation();
}
