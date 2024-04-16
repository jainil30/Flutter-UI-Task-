import 'package:flutter/material.dart';
import 'package:furniture_app/constants/colors.dart';

import '../common/reusable_text.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {super.key, required this.text, required this.onClickFunction});

  final String? text;
  void Function() onClickFunction;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
          onPressed: onClickFunction,
          child: MyReusableText(
              content: text!,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: lightTextColor))),
    );
  }
}
