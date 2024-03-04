import 'package:dio/dio.dart';
import 'package:front/core/networking/api.constants.dart';
import 'package:front/core/networking/res.model.dart';
import 'package:retrofit/http.dart';

import '../models/donation.dart';
import 'donation.res.dart';

part 'donation.remote.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class DonationRemoteDataSource {
  factory DonationRemoteDataSource(Dio dio, {String baseUrl}) =
      _DonationRemoteDataSource;

  //Get Donations
  @GET(ApiConsts.donation)
  Future<DonationListResponse> getDonations(
    @Query('page') int page,
  );


  //Create Donation
  @POST(ApiConsts.donation)
  Future<ElementIdResponse> createDonation(
    @Body() DonationModel donation,
  );

  //Update Donation
  @POST("${ApiConsts.donation}/{id}")
  Future<DonationResponse> updateDonation(
    @Path("id") String id,
    @Body() DonationModel donation,
  );

  //Delete Donation
  @DELETE("${ApiConsts.donation}/{id}")
  Future<DonationResponse> deleteDonation(
    @Path("id") String id,
  );
}
