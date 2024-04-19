import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/reusable_text.dart';

/*Created By: Tushar Jethva
  used_for: for custom row with left and right text
  screen: common for all
 */
class MyCustomHeaderRow extends StatelessWidget {
  final String leftText;
  final String rightText;
  final TextStyle leftStyle;
  final TextStyle rightStyle;
  final VoidCallback onPressedRight;
  const MyCustomHeaderRow(
      {super.key,
      required this.leftText,
      required this.rightText,
      required this.leftStyle,
      required this.rightStyle,
      required this.onPressedRight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(width: 0.02, context: context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: MyReusableText(content: leftText, style: leftStyle),
          ),
          GestureDetector(
            onTap: onPressedRight,
            child: MyReusableText(content: rightText, style: rightStyle),
          ),
        ],
      ),
    );
  }
}
