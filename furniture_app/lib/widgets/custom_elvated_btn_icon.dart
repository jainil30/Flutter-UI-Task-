import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/reusable_text.dart';

class CustomElevatedIconButton extends StatelessWidget {
  const CustomElevatedIconButton(
      {super.key,
      required this.text,
      required this.onClickFunction,
      required this.imagePath});

  final String? text;
  final void Function() onClickFunction;
  final String? imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).hoverColor),
        onPressed: onClickFunction,
        child: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.all(10),
                  width: 23,
                  height: 24,
                  child: Image.asset(imagePath!)
                  ),
              MyReusableText(
                content: text!,
                style: Theme.of(context).textTheme.titleLarge!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
