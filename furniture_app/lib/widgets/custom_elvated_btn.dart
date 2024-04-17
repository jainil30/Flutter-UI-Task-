import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/reusable_text.dart';

import '../common/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.text, required this.onClickFunction});

  final String? text;
  final void Function() onClickFunction;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
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
