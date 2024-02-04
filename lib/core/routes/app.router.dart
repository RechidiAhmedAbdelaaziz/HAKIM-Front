import 'package:flutter/material.dart';
import 'package:front/core/routes/routes.dart';
import 'package:front/features/onboarding/onbording.screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //OnBoarding Screen
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );

      //No Screen
      default:
        return MaterialPageRoute(
          builder: (_) => const Center(
            child: Text("NO ROUTE 404"),
          ),
        );
    }
  }
}
