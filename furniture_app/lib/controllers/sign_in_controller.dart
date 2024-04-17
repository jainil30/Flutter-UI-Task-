import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  var emailController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  var formKey = GlobalKey<FormState>();
  var isObstruct = false.obs;
  var rememberMe = false.obs;
}
