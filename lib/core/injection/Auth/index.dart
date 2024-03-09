import 'package:dio/dio.dart';
import 'package:front/core/cache/auth.dart';
import 'package:front/features/auth/data/repo/auth.imp.dart';
import 'package:front/features/auth/data/source/auth.remote.dart';
import 'package:front/features/auth/domain/repo/auth.dart';
import 'package:front/features/auth/domain/usecases/index.dart';
import 'package:front/features/auth/logic/auth_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../dependency.dart';

part 'auth.dependencies.dart';
part 'auth.usecases.dart';

Future<void> setupAuthependencies() async {
  await _setUpAuth();
}
