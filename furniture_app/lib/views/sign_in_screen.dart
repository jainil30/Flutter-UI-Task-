import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/custom_elvated_btn.dart';
import 'package:furniture_app/widgets/custom_elvated_btn_icon.dart';
import 'package:furniture_app/widgets/sign_in_form.dart';

import '../common/colors.dart';
import '../widgets/reusable_text.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Sign In Sreen
 */

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  bool passwordVisible = false;
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          margin: EdgeInsets.only(top: 50, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                style: IconButton.styleFrom(
                    backgroundColor: Theme.of(context).hoverColor),
                icon: Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 40),
          child: Column(
            children: [
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
                      SignInForm(),
                      CustomElevatedButton(
                        text: "Sign In",
                        onClickFunction: () {},
                      ),
                      CustomElevatedIconButton(
                        text: "Sign In",
                        onClickFunction: () {},
                        imagePath: "assets/images/google_logo.png",
                      ),
                      // Container(
                      //   margin: EdgeInsets.only(top: 16, bottom: 10),
                      //   width: double.infinity,
                      //   height: 56,
                      //   child: ElevatedButton(
                      //     onPressed: () {},
                      //     style: ElevatedButton.styleFrom(
                      //       backgroundColor: Colors.white,
                      //     ),
                      //     child: Row(
                      //       mainAxisSize: MainAxisSize.max,
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       children: [
                      //         Container(
                      //             margin: EdgeInsets.all(10),
                      //             width: 23,
                      //             height: 24,
                      //             child: Image.asset(
                      //                 "assets/images/google_logo.png")
                      //
                      //             // SvgPicture.string(
                      //             //     "assets/images/google_icon.svg"),
                      //             ),
                      //         const MyReusableText(
                      //           content: "Sign In",
                      //           style: TextStyle(
                      //               fontSize: 16,
                      //               color: darkColor,
                      //               fontWeight: FontWeight.normal),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
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
                          MyReusableText(
                            content: "Sign Up for free",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
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
