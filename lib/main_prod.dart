import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:front/app.dart';
import 'package:front/core/injection/dependency.dart';

import 'core/helpers/bloc.observer.dart';
import 'routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = MyBlocObserver();

  await setupDependencies();
  runApp(HakimApp(AppRouter()));
}
