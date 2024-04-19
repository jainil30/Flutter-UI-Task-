import 'package:flutter/material.dart';
import 'package:furniture_app/services/hive_services.dart';
import 'package:furniture_app/views/sign_in_screen.dart';
import 'package:get/get.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : To Sign Up User
 */
class SignUpController extends GetxController {
  var fullnameController = TextEditingController().obs;
  var emailController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  var formKey = GlobalKey<FormState>();
  var isObstruct = true.obs;
  var rememberMe = false.obs;

  void validateSignUpForm(context) {
    if (formKey.currentState!.validate()) {
      var users = HiveService()
          .searchUserByEmail(emailController.value.text.toString());
      if (users.length == 0) {
        HiveService().addUser(
            fullnameController.value.text.toString(),
            emailController.value.text.toString(),
            passwordController.value.text.toString());

        Get.snackbar("Sign Up Successful", "Redirecting Sign In Page",
            icon: Icon(Icons.next_week));

        fullnameController.value.text = "";
        emailController.value.text = "";
        passwordController.value.text = "";

        Navigator.pushNamedAndRemoveUntil(
            context, SignInScreen.routeName, (route) => false);
      } else {
        Get.snackbar(
            "User with ${emailController.value.text.toString()} already exist",
            "Please try some other email address.");
      }
    }
  }
}
