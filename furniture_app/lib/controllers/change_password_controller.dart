import 'package:flutter/material.dart';
import 'package:furniture_app/views/sign_in_screen.dart';
import 'package:get/get.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : To Change Password
 */
class ChangePasswordController extends GetxController {
  var oldPasswordController = TextEditingController().obs;
  var confirmPasswordController = TextEditingController().obs;
  var newPasswordController = TextEditingController().obs;

  var formKey = GlobalKey<FormState>();
  var isObstructOldPassword = true.obs;
  var isObstructNewPassword = true.obs;
  var isObstructConfirmPassword = true.obs;
  var rememberMe = false.obs;

  void validatePasswords(BuildContext context) {
    if (formKey.currentState!.validate()) {
      if (newPasswordController.value.text ==
          confirmPasswordController.value.text) {
        Get.snackbar(
            "Password Changed Successfully", "Redirecting to home page",
            icon: Icon(Icons.next_week));

        Navigator.pushReplacementNamed(context, SignInScreen.routeName);
      } else {
        Get.snackbar("New Password and Confirm Password ", "Do not match",
            icon: Icon(Icons.sms_failed));
      }
    }
  }
}
