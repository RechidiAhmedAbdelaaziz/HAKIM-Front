import 'package:flutter/material.dart';
import 'package:front/app.dart';
import 'package:front/core/injection/dependency.dart';
import 'package:front/core/routes/app.router.dart';

void main() async {
  await setupDependencies();
  runApp(HakimApp(AppRouter()));
}
