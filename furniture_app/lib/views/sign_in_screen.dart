import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/UserController.dart';
import 'package:furniture_app/controllers/sign_in_controller.dart';
import 'package:furniture_app/views/sign_up_screen.dart';
import 'package:furniture_app/widgets/sign_in_form.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../common/colors.dart';
import '../widgets/reusable_text.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Sign In Screen
 */

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});
  static const String routeName = "/signIn";

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var controller = Get.put(SignInController());
  var userController = Get.put(UserController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSharedPreference();
  }

  void getSharedPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    try {
      userController.email.value = preferences.getString("email").toString();
      userController.name.value = preferences.getString("name").toString();
      userController.password.value =
          preferences.getString("password").toString();
      userController.isOnline.value = preferences.getBool("isOnline")!;
      print("==========================");
      print(preferences.getString("email"));
      print(preferences.getString("name"));
      print(preferences.getBool("isOnline"));
    } catch (e) {
      e.printError();
    }
  }

  // var emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 40),
          child: Column(
            children: [
              Gap(getHeight(height: 0.15, context: context)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyReusableText(
                        content: "Welcome Back",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(),
                      ),
                      MyReusableText(
                        content: "Welcome Back! Please Enter Your Details.",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(color: greyColor),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SignInForm(userController.email.value,
                          userController.password.value),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MyReusableText(
                            content: "Don’t have an account?",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: greyColor),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                              child: MyReusableText(
                                content: "Sign Up for free",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                              onTap: () {
                                controller.emailController.value.text = "";
                                controller.passwordController.value.text = "";
                                Navigator.pushNamedAndRemoveUntil(context,
                                    SignUpScreen.routeName, (route) => false);
                              }),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
