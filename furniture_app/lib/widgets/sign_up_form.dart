import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/sign_up_controller.dart';
import 'package:furniture_app/views/change_password_screen.dart';
import 'package:furniture_app/widgets/custom_elevated_btn.dart';
import 'package:furniture_app/widgets/custom_elevated_btn_icon.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:get/get.dart';

import '../common/colors.dart';
import 'custom_textformfield_password.dart';
import 'text_form_field.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Sing Up Form
 */
class SignUpForm extends GetView<SignUpController> {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyReusableText(
              content: "Full Name",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            CustomTextFormField(
                controller: controller.fullnameController.value,
                hintText: "Enter Your Fullname",
                textInputType: TextInputType.name,
                labelText: ""),
            const SizedBox(
              height: 10,
            ),
            MyReusableText(
              content: "Email",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            CustomTextFormField(
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
              text: "Sign Up",
              onClickFunction: () => controller.validateSignUpForm(context),
            ),

            CustomElevatedIconButton(
              text: "Sign Up",
              onClickFunction: () => controller.validateSignUpForm(context),
              imagePath: "assets/images/google_logo.png",
            ),
          ],
        ),
      ),
    );
  }
}
