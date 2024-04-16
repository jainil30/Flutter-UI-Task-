import 'package:flutter/material.dart';
import 'package:furniture_app/constants/theme.dart';
import 'package:furniture_app/routes.dart';
import 'package:furniture_app/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crafty',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => genterateRoutes(settings),
      home: const SplashScreen(),
    );
  }
}
