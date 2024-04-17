import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/reusable_text.dart';

class CustomElevatedIconButton extends StatelessWidget {
  CustomElevatedIconButton(
      {super.key,
      required this.text,
      required this.onClickFunction,
      required this.imagePath});

  final String? text;
  void Function() onClickFunction;
  final String? imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
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
                  margin: EdgeInsets.all(10),
                  width: 23,
                  height: 24,
                  child: Image.asset(imagePath!)

                  // SvgPicture.string(
                  //     "assets/images/google_icon.svg"),
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
