import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/icon_container.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:gap/gap.dart';

class MyFilterAppBarWidget extends StatelessWidget {
  const MyFilterAppBarWidget({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.only(
          top: getHeight(
            height: 0.035,
            context: context,
          ),
          left: getWidth(width: 0.02, context: context),
          right: getWidth(width: 0.02, context: context)),
      child: Row(
        children: [
          MyIconContainer(
              child: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          Gap(getWidth(width: 0.12, context: context)),
          MyReusableText(
            content: "Filter",
            style: theme.textTheme.displaySmall!.copyWith(fontSize: 20),
          ),
        ],
      ),
    );
  }
}