import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class PostModel extends Equatable {
  const PostModel({
    required this.id,
    required this.text,
    required this.poster,
    required this.likers,
    required this.comments,
    required this.date,
  });

  @JsonKey(name: '_id')
  final String? id;
  final String? text;
  final String? poster;
  final int? likers;
  final int? comments;
  @JsonKey(name: 'createdAt')
  final DateTime? date;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);

  @override
  String toString() {
    return "$id, $text, $poster, $likers, $comments, $date, ";
  }

  @override
  List<Object?> get props => [id];
}
