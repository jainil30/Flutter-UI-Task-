import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/bottom_navigation_controller.dart';
import 'package:furniture_app/controllers/sign_in_controller.dart';
import 'package:furniture_app/widgets/custom_elevated_btn.dart';
import 'package:furniture_app/widgets/custom_elevated_btn_icon.dart';
import 'package:furniture_app/widgets/custom_textformfield_password.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:get/get.dart';

import '../common/colors.dart';
import '../views/change_password_screen.dart';
import 'text_form_field.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Sign In Form
 */
class SignInForm extends StatelessWidget {
  SignInForm(this.email, this.password, {super.key});

  final String? email;
  final String? password;

  FocusNode emailFocusNode = FocusNode();

  var controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    final bottomNavBarController = Get.put(BottomNavigationController());

    if (email != "null") {
      controller.emailController.value.text = email!;
      controller.passwordController.value.text = password!;
      controller.rememberMe.value = true;
    }

    return Form(
      key: controller.formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyReusableText(
              content: "Email",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            CustomTextFormField(
                focusNode: emailFocusNode,
                controller: controller.emailController.value,
                hintText: "Enter Your Email",
                textInputType: TextInputType.emailAddress,
                labelText: ""),
            const SizedBox(
              height: 10,
            ),
            MyReusableText(
              content: "Password",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 8,
            ),
            Obx(
              () => CustomPasswordTextFormField(
                  fieldName: "Password",
                  controller: controller.passwordController.value,
                  isObscured: controller.isObstruct),
            ),
            Row(
              children: [
                Obx(
                  () => Checkbox(
                    activeColor: darkColor,
                    value: controller.rememberMe.value,
                    onChanged: (value) {
                      controller.rememberMe.value =
                          !controller.rememberMe.value;
                    },
                  ),
                ),
                const MyReusableText(
                  content: "Remember For 30 Days",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
                const Expanded(child: SizedBox()),
                InkWell(
                  child: const MyReusableText(
                    content: "Forgot password",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                  onTap: () => Navigator.pushNamed(
                      context, ChangePasswordScreen.routeName),
                ),
              ],
            ),
            CustomElevatedButton(
              text: "Sign In",
              onClickFunction: () {
                controller.validateSignInForm(context);
                bottomNavBarController.setBottomIndex = 0;
              },
            ),
            CustomElevatedIconButton(
              text: "Sign In",
              onClickFunction: () {
                controller.validateSignInForm(context);
                bottomNavBarController.setBottomIndex = 0;
              },
              imagePath: "assets/images/google_logo.png",
            ),
          ],
        ),
      ),
    );
  }
}
