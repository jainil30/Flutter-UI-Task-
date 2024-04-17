import 'package:flutter/material.dart';
import 'package:furniture_app/common/bottom_nav.dart';
import 'package:furniture_app/views/change_password_screen.dart';
import 'package:furniture_app/views/initial_screen.dart';
import 'package:furniture_app/views/profile_screen.dart';
import 'package:furniture_app/views/settings_screen.dart';
import 'package:furniture_app/views/sign_in_screen.dart';
import 'package:furniture_app/views/sign_up_screen.dart';

/*Created By: Tushar Jethva
  used_for: All application routes are defined here
*/
Route<dynamic> genterateRoutes(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case MyInitialScreen.routeName:
      return MaterialPageRoute(
          builder: (_) => MyInitialScreen(), settings: routeSettings);

    case MyBottomNavigation.routeName:
      return MaterialPageRoute(
          builder: (_) => MyBottomNavigation(), settings: routeSettings);

    case SignInScreen.routeName:
      return MaterialPageRoute(
          builder: (_) => SignInScreen(), settings: routeSettings);

    case SignUpScreen.routeName:
      return MaterialPageRoute(
          builder: (_) => SignUpScreen(), settings: routeSettings);

    case ChangePasswordScreen.routeName:
      return MaterialPageRoute(
          builder: (_) => ChangePasswordScreen(), settings: routeSettings);

    case MyProfileScreen.routeName:
      return MaterialPageRoute(
          builder: (_) => MyProfileScreen(), settings: routeSettings);

    case SettingsScreen.routeName:
      return MaterialPageRoute(
          builder: (_) => SettingsScreen(), settings: routeSettings);

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(child: Text("Page not found")),
        ),
      );
  }
}
