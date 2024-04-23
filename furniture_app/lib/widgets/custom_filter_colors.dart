import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:gap/gap.dart';

class MyCustomFilterColor extends StatelessWidget {
  final String text;
  final String path;
  final TextStyle style;
  final Color color;
  final Color colorOfContainer;
  final Color iconColor;
  
  const MyCustomFilterColor(
      {super.key, required this.text, required this.path, required this.style, required this.color, required this.colorOfContainer, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            decoration: BoxDecoration(shape: BoxShape.circle,color: colorOfContainer),),
          MyReusableText(content: text, style: style),
          const Gap(10),
          SvgPicture.asset(path,color: iconColor,)
        ],
      ),
    );
  }
}
