import 'package:flutter/material.dart';
import 'package:smart_closet/features/authentication/presentation/update_password/new_password.dart';
import 'package:smart_closet/features/authentication/presentation/authentication/pages/sign_in.dart';
import 'package:smart_closet/features/authentication/presentation/authentication/pages/sign_up.dart';
import 'package:smart_closet/features/authentication/presentation/authentication/pages/verify_code.dart';
import 'package:smart_closet/features/onbaording/pages/get_started.dart';
import 'package:smart_closet/features/onbaording/pages/onboard_screen.dart';
import 'package:smart_closet/features/onbaording/splash_view.dart';
import 'package:smart_closet/features/user_profile/presentation/allow_location.dart';
import 'package:smart_closet/features/user_profile/presentation/profile/profile_auth.dart';

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
      case "/verify code":
        return MaterialPageRoute(builder: (context) => VerifyCode());
      case "/complete profile":
        return MaterialPageRoute(builder: (context) => const ProfileAuth());
      case "/allow location":
        return MaterialPageRoute(builder: (context) => const AllowLocation());
      default:
        return null;
    }
  }
}
