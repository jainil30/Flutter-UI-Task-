import 'package:flutter/material.dart';
import 'package:furniture_app/common/bottom_nav.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/views/home_screen.dart';
import 'package:furniture_app/views/initial_screen.dart';
import 'package:furniture_app/views/item_details_screen.dart';

/*Created By: Tushar Jethva
  used_for: All application routes defines here
*/
Route<dynamic> genterateRoutes(RouteSettings routeSettings){
  switch(routeSettings.name){

    case MyInitialScreen.routeName:
    return MaterialPageRoute(builder: (_)=> MyInitialScreen(),settings: routeSettings);

    case MyBottomNavigation.routeName:
    return MaterialPageRoute(builder: (_)=> MyBottomNavigation(),settings: routeSettings);

    case MyHomeScreen.routeName:
    return MaterialPageRoute(builder: (_)=> MyHomeScreen(),settings: routeSettings);

    case MyItemDetailsScreen.routeName:
    ItemModel itemModel = routeSettings.arguments as ItemModel;
    return MaterialPageRoute(builder: (_)=> MyItemDetailsScreen(item: itemModel,),settings: routeSettings);

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(child: Text("Page not found")),
        ),
      ); 
  }
}