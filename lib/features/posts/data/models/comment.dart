import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable()
class CommentModel extends Equatable {
  const CommentModel({
    required this.comment,
    required this.commentator,
    required this.post,
    required this.replys,
    required this.id,
  });

  @JsonKey(name: '_id')
  final String id;
  final String comment;
  final String commentator;
  final String post;
  final List<String>? replys;

  CommentModel copyWith({
    String? comment,
    String? commentator,
    String? post,
    List<String>? replys,
    String? id,
  }) {
    return CommentModel(
      comment: comment ?? this.comment,
      commentator: commentator ?? this.commentator,
      post: post ?? this.post,
      replys: replys ?? this.replys,
      id: id ?? this.id,
    );
  }

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentModelToJson(this);

  @override
  List<Object?> get props => [
        comment,
        commentator,
        post,
        replys,
        id,
      ];
}
