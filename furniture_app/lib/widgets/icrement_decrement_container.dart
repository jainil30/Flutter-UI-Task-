import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';

class MyIncreDecreContainer extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final Color color;
  const MyIncreDecreContainer({
    super.key,
    required this.child,
    required this.onPressed, required this.height, required this.width,required this.color
  });


  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: getHeight(height: height, context: context),
        width: getWidth(width: width, context: context),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: child
      ),
    );
  }
}