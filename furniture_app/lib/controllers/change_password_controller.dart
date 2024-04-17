import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  var oldPasswordController = TextEditingController().obs;
  var confirmPasswordController = TextEditingController().obs;
  var newPasswordController = TextEditingController().obs;

  var formKey = GlobalKey<FormState>();
  var isObstructOldPassword = true.obs;
  var isObstructNewPassword = true.obs;
  var isObstructConfirmPassword = true.obs;
  var rememberMe = false.obs;

  void validatePasswords() {
    if (formKey.currentState!.validate()) {
      Get.snackbar("Password Changed Successfully", "Redirecting to home page",
          icon: Icon(Icons.next_week));
    }
  }
}
