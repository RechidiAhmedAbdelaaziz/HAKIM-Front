// ignore_for_file: library_private_types_in_public_api

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'worktime.g.dart';

@JsonSerializable()
class Worktime extends Equatable {
  const Worktime({
    required this.day,
    required this.periods,
  });

  final String? day;
  final List<Period>? periods;

  factory Worktime.fromJson(Map<String, dynamic> json) =>
      _$WorktimeFromJson(json);

  Map<String, dynamic> toJson() => _$WorktimeToJson(this);

  @override
  String toString() {
    return "$day, $periods, ";
  }

  @override
  List<Object?> get props => [
        day,
        periods,
      ];
}

@JsonSerializable()
class Period extends Equatable {
  const Period({
    required this.start,
    required this.end,
  });

  final TimeHhMm? start;
  final TimeHhMm? end;

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);

  Map<String, dynamic> toJson() => _$PeriodToJson(this);

  @override
  String toString() {
    return "$start, $end, ";
  }

  @override
  List<Object?> get props => [
        start,
        end,
      ];
}

@JsonSerializable()
class TimeHhMm extends Equatable {
  const TimeHhMm({
    required this.hh,
    required this.mm,
  });

  final int? hh;
  final int? mm;

  factory TimeHhMm.fromJson(Map<String, dynamic> json) =>
      _$TimeHhMmFromJson(json);

  Map<String, dynamic> toJson() => _$TimeHhMmToJson(this);

  @override
  String toString() {
    return "$hh, $mm, ";
  }

  @override
  List<Object?> get props => [
        hh,
        mm,
      ];
}
