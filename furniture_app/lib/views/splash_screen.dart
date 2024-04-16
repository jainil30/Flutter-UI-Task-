import 'package:crafty/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).secondaryHeaderColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height / 4,
              width: MediaQuery.sizeOf(context).width / 2,
              child: SvgPicture.asset(
                "assets/images/splash_screen_img.svg",
              ),
            ),
            Text(
              APP_NAME.toString(),
              textDirection: TextDirection.ltr,
              style:
                  TextStyle(color: Theme.of(context).textTheme.headlineLarge.color.),
            )
          ],
        ),
      ),
    );
  }
}
