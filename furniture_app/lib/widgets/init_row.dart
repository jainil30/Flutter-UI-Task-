import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/reusable_text.dart';

class MyInitRow extends StatelessWidget {
  final String content;
  final VoidCallback onPressed;
  const MyInitRow({super.key, required this.content, required this.onPressed});

  @override
  Widget build(BuildContext context) {
        final theme = Theme.of(context);
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyReusableText(
                    content: content,
                    style:
                        theme.textTheme.titleLarge!.copyWith(color: greyColor)),
                Container(
                  height: getHeight(height: 0.07, context: context),
                  width: getWidth(width: 0.12, context: context),
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: GestureDetector(
                    onTap: onPressed,
                    child: Icon(
                      Icons.chevron_right_outlined,
                      size: getHeight(height: 0.04, context: context),
                      color: lightTextColor,
                    ),
                  ),
                )
              ],
            );
  }
}

