import 'package:flutter/material.dart';
import 'package:furniture_app/common/reusable_text.dart';
import 'package:furniture_app/constants/colors.dart';

/*
  Created By : Jainil Dalwadi
 */

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var _formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  bool passwordVisible = false;
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 42),
          child:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back))),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MyReusableText(
                      content: "Welcome Back",
                      style: TextStyle(
                          color: darkColor,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    const MyReusableText(
                      content: "Welcome Back! Please Enter Your Details.",
                      style: TextStyle(
                          color: greyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyReusableText(
                              content: "Email",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                filled: true,
                                hintText: "Enter Your Email",
                                hintStyle: TextStyle(),
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MyReusableText(
                              content: "Password",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextField(
                              controller: passwordController,
                              obscureText: passwordVisible,
                              decoration: InputDecoration(
                                hintText: "Enter Your Email",
                                hintStyle: TextStyle(),
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none),
                                helperStyle: TextStyle(color: Colors.green),
                                suffixIcon: IconButton(
                                  icon: Icon(passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(
                                      () {
                                        passwordVisible = !passwordVisible;
                                      },
                                    );
                                  },
                                ),
                                alignLabelWithHint: false,
                                filled: true,
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.done,
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  activeColor: darkColor,
                                  value: rememberMe,
                                  onChanged: (value) {
                                    setState(() {
                                      rememberMe = !rememberMe;
                                    });
                                  },
                                ),
                                MyReusableText(
                                  content: "Remember For 30 Days",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14),
                                ),
                                Expanded(child: SizedBox()),
                                InkWell(
                                  child: MyReusableText(
                                    content: "Forgot password",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: MyReusableText(
                              content: "Sign In",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: lightTextColor,
                                  fontWeight: FontWeight.normal))),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16, bottom: 10),
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.all(10),
                                width: 23,
                                height: 24,
                                child:
                                    Image.asset("assets/images/google_logo.png")

                                // SvgPicture.string(
                                //     "assets/images/google_icon.svg"),
                                ),
                            MyReusableText(
                              content: "Sign In",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: darkColor,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        MyReusableText(
                          content: "Don’t have an account?",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                        MyReusableText(
                          content: "Sign Up for free",
                          style: TextStyle(
                              color: darkColor, fontWeight: FontWeight.normal),
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
    );
  }
}
