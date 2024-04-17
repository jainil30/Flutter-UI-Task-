import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/reusable_text.dart';

class CustomElevatedIconButton extends StatefulWidget {
  CustomElevatedIconButton(
      {super.key,
      required this.text,
      required this.onClickFunction,
      required this.imagePath});

  final String? text;
  void Function() onClickFunction;
  final String? imagePath;

  @override
  State<CustomElevatedIconButton> createState() =>
      _CustomElevatedIconButtonState();
}

class _CustomElevatedIconButtonState extends State<CustomElevatedIconButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).hoverColor),
        onPressed: widget.onClickFunction,
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
                  child: Image.asset("${widget.imagePath}")),
              MyReusableText(
                content: widget.text!,
                style: Theme.of(context).textTheme.titleLarge!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
