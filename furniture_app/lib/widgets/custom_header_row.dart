import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/reusable_text.dart';

class MyCustomHeaderRow extends StatelessWidget {
  final String leftText;
  final String rightText;
  final TextStyle leftStyle;
  final TextStyle rightStyle;
  const MyCustomHeaderRow(
      {super.key, required this.leftText, required this.rightText, required this.leftStyle, required this.rightStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: EdgeInsets.symmetric(
                    horizontal: getWidth(width: 0.02, context: context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: MyReusableText(
                content: leftText,
                style: leftStyle),
          ),
          MyReusableText(
              content: rightText,
              style: rightStyle),
        ],
      ),
    );
  }
}



                  