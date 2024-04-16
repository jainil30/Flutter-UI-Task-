import 'package:flutter/material.dart';
import 'package:furniture_app/constants/theme.dart';
import 'package:furniture_app/routes.dart';
import 'package:furniture_app/views/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      onGenerateRoute: (settings) => genterateRoutes(settings),
      home: const MyInitialScreen(),
    );
  }
}
