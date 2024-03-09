import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front/core/injection/dependency.dart';
import 'package:front/features/auth/logic/auth_cubit.dart';
import 'package:front/features/onboarding/onbording.screen.dart';
import 'package:front/features/posts/logic/index.dart';
import 'package:front/test.dart';

class Routes {
  static const String onBoarding = "/onBoarding";
  static const String home = "/home";
  static const String login = "/login";
  static const String signup = "/signup";

  static const String test = "/test";
}

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //OnBoarding Screen
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );

      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => locator<AuthCubit>(),
            child: const TestScreen(),
          ),
        );

      case Routes.test:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => locator<PostListCubit>(),
            child: const TestScreen(),
          ),
        );

      //No Screen
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("NO ROUTE 404"),
            ),
          ),
        );
    }
  }
}
