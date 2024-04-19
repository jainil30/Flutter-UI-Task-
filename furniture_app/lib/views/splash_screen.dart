import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants/strings.dart';
import 'package:furniture_app/views/initial_screen.dart';

import '../common/colors.dart';
import '../widgets/reusable_text.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Splash Screen of app
 */
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const MyInitialScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height / 4,
              width: MediaQuery.sizeOf(context).width / 2,
              child: SvgPicture.asset(
                "assets/images/splash_screen_img.svg",
                // colorFilter:
                //     const ColorFilter.mode(lightTextColor, BlendMode.color),
              ),
            ),
            const MyReusableText(
              content: StringConstants.APP_NAME,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                  color: lightTextColor),
            )
          ],
        ),
      ),
    );
  }
}
