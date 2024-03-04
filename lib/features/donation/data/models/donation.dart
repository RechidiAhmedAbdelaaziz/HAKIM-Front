import 'package:equatable/equatable.dart';
import 'package:front/features/auth/data/models/user.dart';
import 'package:front/features/location/data/models/location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'donation.g.dart';

@JsonSerializable()
class DonationModel extends Equatable {
  const DonationModel({
    required this.id,
    required this.need,
    required this.user,
    required this.phone,
    required this.type,
    required this.isUrgent,
    required this.location,
    required this.date,
  });

  @JsonKey(name: '_id')
  final String? id;
  final String? need;
  final AuthModel? user;
  final String? phone;
  final String? type;
  final bool? isUrgent;
  final LocationModel? location;
  final DateTime? date;

  factory DonationModel.fromJson(Map<String, dynamic> json) =>
      _$DonationModelFromJson(json);

  Map<String, dynamic> toJson() => _$DonationModelToJson(this);

  @override
  String toString() {
    return "$need, $user, $phone, $type, $isUrgent, $location, $date, ";
  }

  @override
  List<Object?> get props => [id];
}
