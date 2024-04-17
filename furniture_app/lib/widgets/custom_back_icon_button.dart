import 'package:flutter/material.dart';

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
