import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:front/app.dart';
import 'package:front/core/helpers/bloc.observer.dart';
import 'package:front/core/injection/dependency.dart';

import 'routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();
  Bloc.observer = MyBlocObserver();
  runApp(HakimApp(AppRouter()));
}
