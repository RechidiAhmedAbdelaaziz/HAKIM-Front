import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:front/core/networking/res.model.dart';
import 'package:front/features/posts/data/models/comment.dart';

part 'comment.res.g.dart';

@JsonSerializable()
class CommentResponse extends ResponseModel<CommentModel> {
  CommentResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory CommentResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CommentResponseToJson(this);
}

@JsonSerializable()
class CommentListResponse extends ResponseModel<List<CommentModel>> {
  CommentListResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory CommentListResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CommentListResponseToJson(this);
}
