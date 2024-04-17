import 'package:flutter/material.dart';
import 'package:furniture_app/common/bottom_nav.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  var emailController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  var formKey = GlobalKey<FormState>();
  var isObstruct = true.obs;
  var rememberMe = false.obs;

  void validateSignInForm(context) {
    if (formKey.currentState!.validate()) {
      Get.snackbar("Sign In Successful", "Redirecting to home page",
          icon: Icon(Icons.next_week));
      Navigator.pushNamedAndRemoveUntil(
          context, MyBottomNavigation.routeName, (route) => false);
    }
  }
}
