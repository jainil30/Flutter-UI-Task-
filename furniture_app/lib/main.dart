import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/change_password_controller.dart';
import 'package:furniture_app/controllers/profile_page_menu_item_controller.dart';
import 'package:furniture_app/controllers/sign_in_controller.dart';
import 'package:furniture_app/controllers/sign_up_controller.dart';
import 'package:furniture_app/routes.dart';
import 'package:furniture_app/views/splash_screen.dart';
import 'package:get/get.dart';
import 'common/theme.dart';
import 'controllers/checkout_controller.dart';
import 'controllers/notification_menu_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SignInController());
    Get.put(SignUpController());
    Get.put(ChangePasswordController());
    Get.put(ProfilePageMenuItemController());
    Get.put(NotificationMenuController());
    Get.put(CheckoutController());
    return GetMaterialApp(
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
