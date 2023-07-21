
import 'package:flutter/material.dart';
import 'package:mead_learn_app/main_menu.dart';
import 'package:mead_learn_app/src/features/auth/views/auth_screen.dart';
import 'package:mead_learn_app/src/features/auth/views/login_screen.dart';
import 'package:mead_learn_app/src/features/auth/views/signup_screen.dart';
import 'package:mead_learn_app/src/features/auth/views/terms_and_condition_screen.dart';
import 'package:mead_learn_app/src/features/auth/views/verify_email.dart';
import 'package:mead_learn_app/src/features/splash.dart';

class AppRoutes {
  static const String mainMenuRoute = "/mainMenuScreen";
  static const String splashRoute = "/splashScreen";
  static const String verifyEmail = "/verifyEmail";
  static const String loginRoute = "/loginScreen";
  static const String signupRoute = "/signupScreen";
  static const String authScreenRoute = "/authScreen";
  static const String termsAndConditionRoute = "/termsAndConditionScreen";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case AppRoutes.mainMenuRoute:
        return MaterialPageRoute(builder: (_) => AppMainMenu());
      case AppRoutes.verifyEmail:
        return MaterialPageRoute(builder: (_) => VerifyEmail());
      case AppRoutes.loginRoute:
        return MaterialPageRoute(builder: (_) => Login());
      case AppRoutes.signupRoute:
        return MaterialPageRoute(builder: (_)=> SignUp());
      case AppRoutes.authScreenRoute:
        return MaterialPageRoute(builder: (_)=> AuthScreen());
      case AppRoutes.termsAndConditionRoute:
        return MaterialPageRoute(builder: (_)=> TermsAndConditionScreen());
      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (ctx) => const Scaffold(
          body: Center(
            child: Text("This route is not found!"),
          ),
        ));
  }
}