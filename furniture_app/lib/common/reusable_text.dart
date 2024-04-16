// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyReusableText extends StatelessWidget {
  final String content;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  const MyReusableText({
    Key? key,
    required this.content,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(content,style: TextStyle(color: color,fontSize: fontSize,fontWeight: fontWeight),);
  }
}
