// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

/*Created By: Tushar Jethva
  used_for:pass widgets and get app bar
  screen: home_screen
 */
class MyCustomAppBarWithTextAndIcons extends StatelessWidget {
  final Widget left;
  final Widget middle;
  final Widget right;
  const MyCustomAppBarWithTextAndIcons({
    Key? key,
    required this.left,
    required this.middle,
    required this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        left,
          middle,
          right
      ],
    );
  }
}
