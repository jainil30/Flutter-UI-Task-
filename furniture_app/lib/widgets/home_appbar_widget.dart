import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/home_top_widget.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
        final theme = Theme.of(context);

    return  Container(
        padding: EdgeInsets.only(
          top: getHeight(height: 0.05, context: context),
          right: getWidth(width: 0.02, context: context),
        ),
        height: getHeight(height: 0.25, context: context),
        color: theme.scaffoldBackgroundColor,
        child: const MyHomeTopWidget(),
      
    );
  }
}