import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/presentation/constants/strings_manager.dart';


import '../pages/login/login_screen.dart';
import '../pages/number_code/number_code_screen.dart';
import '../pages/splash/splash_screen.dart';


class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String numberCodeRoute = "/main";

  }

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
       case Routes.loginRoute:
         return MaterialPageRoute(builder: (_) =>   Login());
       case Routes.numberCodeRoute:
         return MaterialPageRoute(builder: (_) => const NumberCode());
      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title:   Text(
                AppStrings.noRouteFound.tr()),
          ),
          body:  Center(
              child: Text(
                  AppStrings.noRouteFound.tr())),
        ));
  }
}