import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/Theme/colors.dart';
import 'package:front/core/Theme/fonts.dart';
import 'package:front/routes/routes.dart';

class HakimApp extends StatelessWidget {
  final AppRouter router;
  const HakimApp(this.router, {super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        child: MaterialApp(
          theme: ThemeData(
            primaryColor: AppColors.blue,
            fontFamily: AppFontFamily.inter,
            useMaterial3: true,
          ),
          onGenerateRoute: router.generateRoute,
          initialRoute: Routes.login,
        ),
      );
}
