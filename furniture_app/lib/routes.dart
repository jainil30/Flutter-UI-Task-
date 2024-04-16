import 'package:flutter/material.dart';
import 'package:furniture_app/common/bottom_nav.dart';
import 'package:furniture_app/views/initial_screen.dart';

/*Created By: Tushar Jethva
  used_for: All application routes defines here
*/
Route<dynamic> genterateRoutes(RouteSettings routeSettings){
  switch(routeSettings.name){

    case MyInitialScreen.routeName:
    return MaterialPageRoute(builder: (_)=> MyInitialScreen(),settings: routeSettings);

    case MyBottomNavigation.routeName:
    return MaterialPageRoute(builder: (_)=> MyBottomNavigation(),settings: routeSettings);

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(child: Text("Page not found")),
        ),
      ); 
  }
}