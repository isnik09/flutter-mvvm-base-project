import 'package:blog_app/view/splash_screen.dart';
import 'package:flutter/material.dart';
import '../../view/home_screen.dart';
import '../../view/login_screen.dart';
import 'routes.dart';

// HERE WE DEFINED ROUTES FOR THE NAVIGATION

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());

      case RouteNames.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
              body: Center(
            child: Text("No route defined"),
          ));
        });
    }
  }
}
