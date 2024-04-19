import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/reusable_text.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Elevated Button with Icon in prefix
 */
class CustomElevatedIconButton extends StatefulWidget {
  const CustomElevatedIconButton(
      {super.key,
      required this.text,
      required this.onClickFunction,
      required this.imagePath,
      this.color,
      this.elevation});

  final String? text;
  final void Function() onClickFunction;
  final String? imagePath;
  final Color? color;
  final double? elevation;
  @override
  State<CustomElevatedIconButton> createState() =>
      _CustomElevatedIconButtonState();
}

class _CustomElevatedIconButtonState extends State<CustomElevatedIconButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: (widget.elevation == null) ? 0 : widget.elevation,
            backgroundColor: (widget.color != null)
                ? widget.color
                : Theme.of(context).hoverColor),
        onPressed: widget.onClickFunction,
        child: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (widget.imagePath!.isNotEmpty)
                Container(
                    margin: const EdgeInsets.all(10),
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
