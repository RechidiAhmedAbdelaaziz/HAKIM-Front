import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front/core/injection/dependency.dart';
import 'package:front/features/appointment/logic/appointments.cubit.dart';
import 'package:front/features/auth/logic/auth_cubit.dart';
import 'package:front/features/auth/view/login.screen.dart';
import 'package:front/features/auth/view/signup.screen.dart';
import 'package:front/features/home/screens/feed.screen.dart';
import 'package:front/features/posts/logic/index.dart';

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
      case Routes.signup:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => locator<AuthCubit>(),
            child: const SignUpScreen(),
          ),
        );

      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => locator<AuthCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => locator<PostListCubit>()..getList()),
              BlocProvider(
                  create: (_) =>
                      locator<AppointmentsCubit>()..getList(DateTime.now())),
            ],
            child: const FeedScreen(),
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
