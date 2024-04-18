import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/sign_in_controller.dart';
import 'package:furniture_app/widgets/custom_elvated_btn.dart';
import 'package:furniture_app/widgets/custom_elvated_btn_icon.dart';
import 'package:furniture_app/widgets/custom_textformfield_password.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:get/get.dart';

import '../common/colors.dart';
import '../views/change_password_screen.dart';
import 'text_form_field.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Sing In Form
 */
class SignInForm extends GetView<SignInController> {
  const SignInForm({super.key});

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
              content: "Email",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8),
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
              // () => TextFormField(
              //   controller: controller.passwordController.value,
              //   obscureText: controller.isObstruct.value,
              //   autovalidateMode: AutovalidateMode.onUserInteraction,
              //   decoration: InputDecoration(
              //     hintText: "Enter Your Password",
              //     hintStyle: Theme.of(context).textTheme.titleMedium!,
              //     fillColor: Theme.of(context).hoverColor,
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(20),
              //       borderSide: BorderSide.none,
              //     ),
              //     helperStyle: TextStyle(color: Colors.green),
              //     suffixIcon: IconButton(
              //       icon: Icon(controller.isObstruct.value
              //           ? Icons.visibility
              //           : Icons.visibility_off),
              //       onPressed: () {
              //         controller.passwordController.value =
              //             controller.passwordController.value;
              //         controller.isObstruct.value =
              //             !controller.isObstruct.value;
              //       },
              //     ),
              //     alignLabelWithHint: false,
              //     filled: true,
              //   ),
              //   keyboardType: TextInputType.visiblePassword,
              //   textInputAction: TextInputAction.done,
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return "Password is mandatory";
              //     }
              //     return null;
              //   },
              // ),
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
              },
            ),
            CustomElevatedIconButton(
              text: "Sign In",
              onClickFunction: () {
                controller.validateSignInForm(context);
              },
              imagePath: "assets/images/google_logo.png",
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
  });

  final SignInController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.passwordController.value,
      obscureText: controller.isObstruct.value,
      decoration: InputDecoration(
        hintText: "Enter Your Password",
        hintStyle: Theme.of(context).textTheme.titleMedium!,
        fillColor: Theme.of(context).hoverColor,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
        helperStyle: TextStyle(color: Colors.green),
        suffixIcon: IconButton(
          icon: Icon(controller.isObstruct.value
              ? Icons.visibility
              : Icons.visibility_off),
          onPressed: () {
            print(" << -- ${controller.passwordController.value.text}");
            controller.passwordController.value =
                controller.passwordController.value;
            controller.isObstruct.value = !controller.isObstruct.value;

            print(" -------> ${controller.passwordController.value.text}");
          },
        ),
        alignLabelWithHint: false,
        filled: true,
      ),
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
    );
  }
}
