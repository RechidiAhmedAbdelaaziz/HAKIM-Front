import 'package:equatable/equatable.dart';
import 'package:front/core/usecase/get.user.dart';
import 'package:front/features/auth/domain/enitities/user.dart';
import 'package:front/features/location/domain/entity/loaction.dart';

import '../../data/models/donation.dart';

class Donation extends Equatable {
  const Donation({
    required this.id,
    required this.need,
    required this.user,
    required this.phone,
    required this.type,
    required this.isUrgent,
    required this.location,
    required this.date,
  });

  final String? id;
  final String? need;
  final User? user;
  final String? phone;
  final String? type;
  final bool? isUrgent;
  final Location? location;
  final DateTime? date;

  factory Donation.fromModel(DonationModel? model) {
    final user = GetUserFromModel.call(model?.user);
    return Donation(
        id: model?.id,
        need: model?.need,
        user: user,
        phone: model?.phone,
        type: model?.type,
        isUrgent: model?.isUrgent,
        location: Location.fromModel(model?.location),
        date: model?.date);
  }

  DonationModel toModel() => DonationModel(
      id: id,
      need: need,
      user: user?.toModel(),
      phone: phone,
      type: type,
      isUrgent: isUrgent,
      location: location?.toModel(),
      date: date);

  Donation copyWith({
    String? need,
    User? user,
    String? phone,
    String? type,
    bool? isUrgent,
    Location? location,
    DateTime? date,
    String? id,
  }) {
    return Donation(
      id: id ?? this.id,
      need: need ?? this.need,
      user: user ?? this.user,
      phone: phone ?? this.phone,
      type: type ?? this.type,
      isUrgent: isUrgent ?? this.isUrgent,
      location: location ?? this.location,
      date: date ?? this.date,
    );
  }

  @override
  List<Object?> get props => [id];
}
