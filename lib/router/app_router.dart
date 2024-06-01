import 'package:flutter/material.dart';
import 'package:smart_closet/features/authentication/presentation/authentication/pages/new_password.dart';
import 'package:smart_closet/features/authentication/presentation/authentication/pages/sign_in.dart';
import 'package:smart_closet/features/authentication/presentation/authentication/pages/sign_up.dart';
import 'package:smart_closet/features/onbaording/pages/get_started.dart';
import 'package:smart_closet/features/onbaording/pages/onboard_screen.dart';
import 'package:smart_closet/features/onbaording/splash_view.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const SplashView());
      case "/get started":
        return MaterialPageRoute(builder: (context) => const GetStarted());
      case "/walk through":
        return MaterialPageRoute(builder: (context) => const OnboardScreen());
      case "/sign up":
        return MaterialPageRoute(builder: (context) => const SignUp());
      case "/sign in":
        return MaterialPageRoute(builder: (context) => const SignIn());
      case "/new password":
        return MaterialPageRoute(builder: (context) => const NewPassword());
      default:
        return null;
    }
  }
}
