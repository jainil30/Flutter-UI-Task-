import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/change_password_controller.dart';
import 'package:furniture_app/widgets/custom_elevated_btn.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:get/get.dart';

import '../widgets/custom_back_icon_button.dart';
import '../widgets/custom_textformfield_password.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Allows user to change his/her password
 */
class ChangePasswordScreen extends GetView<ChangePasswordController> {
  const ChangePasswordScreen({super.key});

  static const String routeName = "/changePassword";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leadingWidth: 70,
        leading: Container(
          margin: EdgeInsets.only(left: 24, top: 10),
          child: CustomBackIconButton(
            icon: Icons.arrow_back,
            function: Get.back,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Change Password",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(25),
        child: CustomElevatedButton(
          text: "Change Password",
          onClickFunction: () {
            controller.validatePasswords(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                MyReusableText(
                  content: "Current Password",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomPasswordTextFormField(
                    fieldName: "Password",
                    controller: controller.oldPasswordController.value,
                    isObscured: controller.isObstructOldPassword),
                const SizedBox(
                  height: 20,
                ),
                MyReusableText(
                  content: "New Password",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomPasswordTextFormField(
                    fieldName: "New Password",
                    controller: controller.newPasswordController.value,
                    isObscured: controller.isObstructNewPassword),
                const SizedBox(
                  height: 20,
                ),
                MyReusableText(
                  content: "Confirm Password",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomPasswordTextFormField(
                    fieldName: "Confirm Password",
                    controller: controller.confirmPasswordController.value,
                    isObscured: controller.isObstructConfirmPassword),
                // Expanded(child: Container()),
                // Container(
                //   height: MediaQuery.of(context).size.height * 0.35,
                // ),
                // Align(
                //   alignment: AlignmentDirectional.bottomCenter,
                //   child: ,
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
