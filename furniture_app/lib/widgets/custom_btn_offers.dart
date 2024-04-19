import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/reusable_text.dart';

/*Created By: Tushar Jethva

*/
class MyCustomSpecialButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final TextStyle style;
  final Widget widget;
  const   MyCustomSpecialButton({
    super.key, 
    required this.buttonName, required this.onPressed,
    required this.height,
    required this.width,
    required this.style,
    required this.widget
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(height: height, context: context),
      width: getWidth(width: width, context: context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          widget,
          ElevatedButton(
              onPressed: onPressed,
              child: MyReusableText(
                  content: buttonName,
                  style: style)),
        ],
      ),
    );
  }
}