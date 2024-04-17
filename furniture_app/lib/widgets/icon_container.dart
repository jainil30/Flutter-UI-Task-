import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';

class MyIconContainer extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  const MyIconContainer({
    super.key,
    required this.child,
    required this.onPressed
  });


  @override
  Widget build(BuildContext context) {
        final theme = Theme.of(context);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: getHeight(height: 0.07, context: context),
        width: getWidth(width: 0.07, context: context),
        decoration: BoxDecoration(
          color: theme.hoverColor,
          shape: BoxShape.circle,
        ),
        child: child
      ),
    );
  }
}