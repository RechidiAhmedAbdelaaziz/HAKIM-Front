// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worktime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Worktime _$WorktimeFromJson(Map<String, dynamic> json) => Worktime(
      day: json['day'] as String?,
      periods: (json['periods'] as List<dynamic>?)
          ?.map((e) => Period.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WorktimeToJson(Worktime instance) => <String, dynamic>{
      'day': instance.day,
      'periods': instance.periods,
    };

Period _$PeriodFromJson(Map<String, dynamic> json) => Period(
      start: json['start'] == null
          ? null
          : TimeHhMm.fromJson(json['start'] as Map<String, dynamic>),
      end: json['end'] == null
          ? null
          : TimeHhMm.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PeriodToJson(Period instance) => <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

TimeHhMm _$TimeHhMmFromJson(Map<String, dynamic> json) => TimeHhMm(
      hh: json['hh'] as int?,
      mm: json['mm'] as int?,
    );

Map<String, dynamic> _$TimeHhMmToJson(TimeHhMm instance) => <String, dynamic>{
      'hh': instance.hh,
      'mm': instance.mm,
    };
