import 'package:flutter/material.dart';
import 'package:furniture_app/common/theme.dart';
import 'package:furniture_app/controllers/sign_in_controller.dart';
import 'package:furniture_app/routes.dart';
import 'package:furniture_app/views/initial_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SignInController());
    return GetMaterialApp(
      title: 'Crafty',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => genterateRoutes(settings),
      home:const MyInitialScreen(),
    );
  }
}
