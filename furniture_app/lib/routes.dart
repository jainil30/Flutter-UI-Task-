import 'package:flutter/material.dart';
import 'package:furniture_app/common/bottom_nav.dart';

import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/views/checkout_screen.dart';
import 'package:furniture_app/views/filter_screen.dart';
import 'package:furniture_app/views/home_screen.dart';
import 'package:furniture_app/views/initial_screen.dart';
import 'package:furniture_app/views/item_details_screen.dart';

import 'package:furniture_app/views/change_password_screen.dart';
import 'package:furniture_app/views/notification_screen.dart';
import 'package:furniture_app/views/profile_screen.dart';
import 'package:furniture_app/views/search_screen.dart';
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

    case MyHomeScreen.routeName:
      return MaterialPageRoute(
          builder: (_) => const MyHomeScreen(), settings: routeSettings);

    case CheckOutScreen.routeName:
      return MaterialPageRoute(
          builder: (_) => const CheckOutScreen(), settings: routeSettings);

    case NotificationScreen.routeName:
      return MaterialPageRoute(
          builder: (_) => const NotificationScreen(), settings: routeSettings);

    case MySearchScreen.routeName:
      return MaterialPageRoute(
          builder: (_) => const MySearchScreen(), settings: routeSettings);

    case MyFilterScreen.routeName:
      return MaterialPageRoute(
          builder: (_) => const MyFilterScreen(), settings: routeSettings);

    case MyItemDetailsScreen.routeName:
      ItemModel itemModel = routeSettings.arguments as ItemModel;
      return MaterialPageRoute(
          builder: (_) => MyItemDetailsScreen(
                item: itemModel,
              ),
          settings: routeSettings);

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(child: Text("Page not found")),
        ),
      );
  }
}
