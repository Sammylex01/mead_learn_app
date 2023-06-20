
import 'package:flutter/material.dart';
import 'package:mead_learn_app/main_menu.dart';
import 'package:mead_learn_app/src/features/splash.dart';

class AppRoutes {
  static const String mainMenuRoute = "/mainMenuScreen";
  static const String splashRoute = "/splashScreen";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case AppRoutes.mainMenuRoute:
        return MaterialPageRoute(builder: (_) => AppMainMenu());
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