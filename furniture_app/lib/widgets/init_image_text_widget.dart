import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:gap/gap.dart';

class MyInitImageText extends StatelessWidget {
  const MyInitImageText({
    super.key,
    required this.data,
    required this.theme,
  });

  final Map<String, String> data;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(data["imageUrl"]!),
        Gap(getHeight(height: 0.05, context: context)),
        Container(
          alignment: Alignment.center,
          width: getWidth(width: 0.35, context: context),
          child: Text(
            data["text"]!,
            style: theme.textTheme.displayMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}