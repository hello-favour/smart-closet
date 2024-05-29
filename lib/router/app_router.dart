import 'package:flutter/material.dart';
import 'package:smart_closet/features/onbaording/pages/get_started.dart';
import 'package:smart_closet/features/onbaording/splash_view.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const SplashView());
      case "/get started":
        return MaterialPageRoute(builder: (context) => const GetStarted());
      default:
        return null;
    }
  }
}
