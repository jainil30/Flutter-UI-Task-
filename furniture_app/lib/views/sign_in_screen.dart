import 'package:flutter/material.dart';
import 'package:furniture_app/views/sign_up_screen.dart';
import 'package:furniture_app/widgets/sign_in_form.dart';

import '../common/colors.dart';
import '../widgets/reusable_text.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Sign In Screen
 */

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  static const String routeName = "/signIn";
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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        // flexibleSpace: Container(
        //   margin: EdgeInsets.only(top: 50, left: 20),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       IconButton(
        //         style: IconButton.styleFrom(
        //             backgroundColor: Theme.of(context).hoverColor),
        //         icon: Icon(
        //           Icons.arrow_back,
        //         ),
        //         onPressed: () {
        //           Navigator.pushNamedAndRemoveUntil(
        //               context, MyInitialScreen.routeName, (route) => false);
        //         },
        //       ),
        //     ],
        //   ),
        // ),
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
                            onTap: () => Navigator.pushNamedAndRemoveUntil(
                                context,
                                SignUpScreen.routeName,
                                (route) => false),
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
