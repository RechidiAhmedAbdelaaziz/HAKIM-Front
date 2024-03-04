import 'package:front/core/networking/res.model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../models/donation.dart';

part 'donation.res.g.dart';

@JsonSerializable()
class DonationResponse extends ResponseModel<DonationModel> {
  DonationResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory DonationResponse.fromJson(Map<String, dynamic> json) =>
      _$DonationResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DonationResponseToJson(this);
}

@JsonSerializable()
class DonationListResponse extends ResponseModel<List<DonationModel>> {
  DonationListResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory DonationListResponse.fromJson(Map<String, dynamic> json) =>
      _$DonationListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DonationListResponseToJson(this);
}
