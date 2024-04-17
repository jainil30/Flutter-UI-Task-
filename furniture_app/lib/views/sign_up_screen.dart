import 'package:flutter/material.dart';
import 'package:furniture_app/views/sign_in_screen.dart';
import 'package:furniture_app/widgets/sign_up_form.dart';

import '../common/colors.dart';
import '../widgets/reusable_text.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Sign Up Sreen
 */

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const String routeName = "/signUp";
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
        flexibleSpace: Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // if (Navigator.of(context).canPop())
              Container(
                margin: EdgeInsets.only(top: 50, left: 20),
                child: IconButton(
                  style: IconButton.styleFrom(
                      backgroundColor: Theme.of(context).hoverColor),
                  icon: Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: () {
                    print("Asdasda");
                    () => Navigator.pushNamedAndRemoveUntil(
                        context, SignInScreen.routeName, (route) => false);
                  },
                ),
              )
              // else
              //   Text("data"),
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
                      SignOutForm(),
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
                            onTap: () => Navigator.pushNamedAndRemoveUntil(
                                context,
                                SignInScreen.routeName,
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
