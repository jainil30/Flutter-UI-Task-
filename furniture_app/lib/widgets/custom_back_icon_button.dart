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
    return IconButton(
      style:
          IconButton.styleFrom(backgroundColor: Theme.of(context).hoverColor),
      icon: Icon(icon),
      onPressed: () => function,
    );
  }
}
