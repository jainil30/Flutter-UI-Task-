import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  var fullnameController = TextEditingController().obs;
  var emailController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  var formKey = GlobalKey<FormState>();
  var isObstruct = true.obs;
  var rememberMe = false.obs;

  void validateSignUpForm() {
    if (formKey.currentState!.validate()) {
      Get.snackbar("Sign In Successful", "Redirecting to home page",
          icon: Icon(Icons.next_week));
    }
  }
}
