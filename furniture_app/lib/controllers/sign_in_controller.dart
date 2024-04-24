import 'package:flutter/material.dart';
import 'package:furniture_app/common/bottom_nav.dart';
import 'package:furniture_app/services/hive_services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : TO Sign In User
 */
class SignInController extends GetxController {
  var emailController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  var formKey = GlobalKey<FormState>();
  var isObstruct = true.obs;
  var rememberMe = false.obs;

  // bool invalidPassword = true;
  void validateSignInForm(context) async {
    if (formKey.currentState!.validate()) {
      var users = HiveService()
          .searchUserByEmail(emailController.value.text.toString());
      if (users.length > 0) {
        for (var user in users) {
          if (user.password == passwordController.value.text.toString()) {
            // invalidPassword = false;
            SharedPreferences preferences =
                await SharedPreferences.getInstance() as SharedPreferences;

            preferences.setString(
                "email", emailController.value.text.toString());
            preferences.setString("name", user.fullName);
            preferences.setString("password", user.password);
            preferences.setBool("isOnline", user.isOnline);

            Get.snackbar("Sign In Successful", "Redirecting to home page",
                icon: Icon(Icons.next_week));

            print("**************************8");
            print(preferences.getString("email"));
            print(preferences.getString("name"));
            print(preferences.getBool("isOnline"));

            emailController.value.text = "";
            passwordController.value.text = "";
            Navigator.pushNamedAndRemoveUntil(
                context, MyBottomNavigation.routeName, (route) => false);
          } else {
            Get.snackbar("Invalid Password", "Please enter correct password");
          }
        }
      } else {
        Get.snackbar(
            "User with ${emailController.value.text.toString()} doesn't exist",
            "Please enter valid credentials");
      }

      // if (invalidPassword) {
      //   Get.snackbar("Password is invalid", "Please enter valid credentials");
      // }
    }
  }
}
