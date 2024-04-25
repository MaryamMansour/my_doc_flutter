import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_doctor/core/routing/routes.dart';
import 'package:my_doctor/features/login/ui/login_screen.dart';
import 'package:my_doctor/features/on_boarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {

    // to ba passed in any screen
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("NO Route defined for ${settings.name}"),
                  ),
                ));
    }
  }
}
