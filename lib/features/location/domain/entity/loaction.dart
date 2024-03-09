import 'package:equatable/equatable.dart';
import 'package:front/features/location/data/models/location.dart';

class Location extends Equatable {
  const Location({
    required this.id,
    required this.title,
    required this.long,
    required this.lat,
  });

  final String? id;
  final String? title;
  final double? long;
  final double? lat;

  LocationModel toModel() =>
      LocationModel(id: id, title: title, longitude: long, latitude: lat);

  factory Location.fromModel(LocationModel? model) => Location(
      id: model?.id,
      title: model?.title,
      long: model?.longitude,
      lat: model?.latitude);

  @override
  List<Object?> get props => [id];
}

Location getLocationByID(String id) =>
    Location(id: id, title: "", long: 32, lat: 32);
