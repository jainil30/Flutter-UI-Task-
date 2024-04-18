import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';

class TrackOrderBottomSheet extends StatelessWidget {
  const TrackOrderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    print("Built Bottom Sheet");
    return Container(
      height: getHeight(height: 0.6, context: context),
      width: double.infinity,
      decoration: BoxDecoration(color: Theme.of(context).hoverColor),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
