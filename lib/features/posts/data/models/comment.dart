import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable()
class CommentModel extends Equatable {
  const CommentModel({
    required this.id,
    required this.text,
    required this.commentator,
    required this.post,
    required this.date,
  });

  @JsonKey(name: '_id')
  final String? id;
  final String? text;
  final String? commentator;
  final String? post;
  @JsonKey(name: 'createdAt')
  final DateTime? date;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentModelToJson(this);

  @override
  String toString() {
    return "$id, $text, $commentator, $post, $date, ";
  }

  @override
  List<Object?> get props => [id];
}
