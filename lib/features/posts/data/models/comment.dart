import 'package:equatable/equatable.dart';
import 'package:front/features/auth/data/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable()
class CommentModel extends Equatable {
  const CommentModel({
    required this.post,
    required this.id,
    required this.text,
    required this.commentator,
    required this.date,
  });

  @JsonKey(name: '_id')
  final String? id;
  final String? text;
  final String? post;
  final AuthModel? commentator;
  @JsonKey(name: 'createdAt')
  final DateTime? date;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentModelToJson(this);

  @override
  String toString() {
    return "$id, $text, $commentator, $date, ";
  }

  @override
  List<Object?> get props => [id];
}
