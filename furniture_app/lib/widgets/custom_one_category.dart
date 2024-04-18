import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:gap/gap.dart';

/*Created By: Tushar Jethva

*/
class MyCustomOneCategory extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final TextStyle style;
  final Widget widget;
  final Color color;
  const MyCustomOneCategory(
      {super.key,
      required this.buttonName,
      required this.onPressed,
      required this.height,
      required this.width,
      required this.style,
      required this.widget,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(right: getWidth(width: 0.02, context: context)),
        height: getHeight(height: height, context: context),
        width: getWidth(width: width, context: context),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: color),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget,
            Gap(getWidth(width: 0.011, context: context)),
            MyReusableText(content: buttonName, style: style),
          ],
        ),
      ),
    );
  }
}
