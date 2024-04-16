// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyReusableText extends StatelessWidget {
  final String content;
  final TextStyle style;
  const MyReusableText({
    Key? key,
    required this.content,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: style,
    );
  }
}
