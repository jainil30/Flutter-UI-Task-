import 'package:flutter/material.dart';
import 'package:furniture_app/views/initial_screen.dart';

/*Created By: Tushar Jethva
  used_for: All application routes defines here
*/
Route<dynamic> genterateRoutes(RouteSettings routeSettings){
  switch(routeSettings){

    case MyInitialScreen.routeName:
    return MaterialPageRoute(builder: (_)=> MyInitialScreen());

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(child: Text("Page not found")),
        ),
      ); 
  }
}