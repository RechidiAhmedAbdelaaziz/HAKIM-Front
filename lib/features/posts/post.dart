import 'package:equatable/equatable.dart';


// ignore: must_be_immutable
abstract class IPost extends Equatable {
  final String id;
  List<String> likers;
  final DateTime date;
  final String post;

  IPost({
    required this.id,
    required this.likers,
    required this.date,
    required this.post,
  });
}

