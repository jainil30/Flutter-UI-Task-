import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/reusable_text.dart';

/*Created By: Tushar Jethva

*/
class MyCustomButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;
  const MyCustomButton({
    super.key, 
    required this.buttonName, required this.onPressed,
  });


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: getHeight(height: 0.08, context: context),
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
          onPressed: onPressed,
          child: MyReusableText(
              content: buttonName,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: lightTextColor))),
    );
  }
}