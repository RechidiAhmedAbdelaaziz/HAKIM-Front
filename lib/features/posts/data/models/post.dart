// ignore_for_file: must_be_immutable

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import '../../post.dart';

part 'post.g.dart';

@JsonSerializable()
class PostModel extends IPost {
  PostModel({
    required super.id,
    required super.post,
    required this.poster,
    required super.likers,
    required this.comments,
    required super.date,
  });

  final String? poster;
  final List<String>? comments;

  PostModel copyWith({
    String? id,
    String? post,
    String? poster,
    List<String>? likers,
    List<String>? comments,
    DateTime? date,
  }) {
    return PostModel(
      id: id ?? this.id,
      post: post ?? this.post,
      poster: poster ?? this.poster,
      likers: likers ?? this.likers,
      comments: comments ?? this.comments,
      date: date ?? this.date,
    );
  }

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);

  @override
  String toString() {
    return jsonEncode(toJson());
  }

  @override
  List<Object?> get props => [id, post, poster, likers, comments, date];
}
