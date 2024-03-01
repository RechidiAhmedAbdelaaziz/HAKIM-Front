import 'package:dio/dio.dart';
import 'package:front/features/posts/data/repositories/comment.imp.dart';
import 'package:front/features/posts/data/repositories/post.imp.dart';
import 'package:front/features/posts/data/source/comment.local.dart';
import 'package:front/features/posts/data/source/comment.remote.dart';
import 'package:front/features/posts/data/source/post.local.dart';
import 'package:front/features/posts/data/source/post.remote.dart';
import 'package:front/features/posts/domain/repositories/comment.dart';
import 'package:front/features/posts/domain/repositories/post.dart';
import 'package:front/features/posts/domain/usecases/index.dart';
import 'package:front/features/posts/logic/comment/comment_cubit.dart';
import 'package:front/features/posts/logic/post/post_cubit.dart';
import 'package:front/core/cache/post_comment.dart';
import 'package:front/core/networking/info.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../dependency.dart';

part 'post.dependencies.dart';
part 'comment.dependencies.dart';
part 'post.usecases.dart';
part 'comment.usecases.dart';

Future<void> setupPostDependencies() async {
  await _setupPost();
  await _setupComment();
}
