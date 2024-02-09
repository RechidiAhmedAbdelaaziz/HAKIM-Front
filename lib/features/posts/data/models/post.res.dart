import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:front/core/networking/res.model.dart';
import 'package:front/features/posts/data/models/post.dart';

part 'post.res.g.dart';

@JsonSerializable()
class PostResponse extends ResponseModel<PostModel> {
  PostResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PostResponseToJson(this);
}

@JsonSerializable()
class PostListResponse extends ResponseModel<List<PostModel>> {
  PostListResponse(
      {required super.status,
      required super.message,
      required super.data,
      required super.code});

  factory PostListResponse.fromJson(Map<String, dynamic> json) =>
      _$PostListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PostListResponseToJson(this);
}
