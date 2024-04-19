import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/sign_up_controller.dart';
import 'package:furniture_app/views/sign_in_screen.dart';
import 'package:furniture_app/widgets/sign_up_form.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../common/colors.dart';
import '../common/sizes.dart';
import '../widgets/reusable_text.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Sign Up Screen
 */

class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({super.key});
  static const String routeName = "/signUp";
  // var emailController = TextEditingController();
  //
  // var passwordController = TextEditingController();
  //
  // bool passwordVisible = false;
  //
  // bool rememberMe = false;

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
                        content: "Create Account  ",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(),
                      ),
                      MyReusableText(
                        content: "Let’s create account toghter",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(color: greyColor),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SignUpForm(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MyReusableText(
                            content: "Already have an account?",
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
                                content: "Sign In",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                              onTap: () {
                                controller.fullnameController.value.text = "";
                                controller.emailController.value.text = "";
                                controller.passwordController.value.text = "";
                                Navigator.pushNamedAndRemoveUntil(context,
                                    SignInScreen.routeName, (route) => false);
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
