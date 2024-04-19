import 'package:flutter/material.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Back button on top left of the screen
 */
class CustomBackIconButton extends StatelessWidget {
  const CustomBackIconButton({super.key, this.icon, this.function});

  final IconData? icon;
  final Function? function;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 24),
      width: 68,
      height: 68,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
      child: IconButton(
        style:
            IconButton.styleFrom(backgroundColor: Theme.of(context).hoverColor),
        icon: Icon(icon),
        onPressed: () => function!(),
      ),
    );
  }
}
