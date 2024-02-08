import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front/core/injection/dependency.dart';
import 'package:front/core/routes/routes.dart';
import 'package:front/features/login/logic/login_cubit.dart';
import 'package:front/features/login/view/login.screen.dart';
import 'package:front/features/onboarding/onbording.screen.dart';

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
            create: (context) => locator<LoginCubit>(),
            child: const LoginScreen(),
          ),
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
