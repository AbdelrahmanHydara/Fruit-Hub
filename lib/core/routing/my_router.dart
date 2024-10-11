import 'package:flutter/material.dart';
import 'package:fruits_app/core/routing/routes.dart';
import 'package:fruits_app/features/splash/screens/splash_screen.dart';

class MyRouter {
  MyRouter._();

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
    }
    return null;
  }
}