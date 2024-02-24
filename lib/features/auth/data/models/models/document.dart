// ignore_for_file: library_private_types_in_public_api

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'document.g.dart';


@JsonSerializable()
class Document extends Equatable {
  const Document({
    required this.title,
    required this.link,
  });

  final String? title;
  final String? link;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);

  Map<String, dynamic> toJson() => _$DocumentToJson(this);

  @override
  String toString() {
    return "$title, $link, ";
  }

  @override
  List<Object?> get props => [
        title,
        link,
      ];
}
