import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/constants/strings.dart';

/*Created By: Tushar Jethva

*/
class MyEyeContainer extends StatelessWidget {
  const MyEyeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Positioned(
      bottom: getHeight(height: 0.053, context: context),
      right: getWidth(width: 0.16, context: context),
      child: Container(
        width: getWidth(width: 0.15, context: context),
        height: getHeight(height: 0.1, context: context),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent
        ),
        child: Container(
          margin: const EdgeInsets.all(10),
          width: getWidth(width: 0.1, context: context),
          height: getHeight(height: 0.08, context: context),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: primaryColor,
          image: DecorationImage(image: AssetImage(StringConstants.EYE_IMAGE),scale: 0.95)
        ),
        ),
      ),
    );
  }
}