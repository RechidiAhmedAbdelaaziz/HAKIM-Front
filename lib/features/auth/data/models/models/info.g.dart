// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      pic: json['pic'] as String?,
      gender: json['gender'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      age: json['age'] as int?,
      blood: json['blood'] as String?,
      tall: json['tall'] as int?,
      weight: json['weight'] as int?,
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'pic': instance.pic,
      'gender': instance.gender,
      'birthday': instance.birthday?.toIso8601String(),
      'age': instance.age,
      'blood': instance.blood,
      'tall': instance.tall,
      'weight': instance.weight,
    };
