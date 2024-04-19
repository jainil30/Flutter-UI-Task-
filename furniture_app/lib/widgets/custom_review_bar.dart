import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';

class CustomReviewBar extends StatelessWidget {
  const CustomReviewBar({super.key, this.stars, this.barPercentage});

  final int? stars;
  final int? barPercentage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "$stars Stars",
          style: Theme.of(context).textTheme.titleLarge!,
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 15,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context)
                        .datePickerTheme
                        .headerBackgroundColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 15,
                width: double.parse((barPercentage! * 1).toString()),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: primaryColor),
              ),
            )
          ],
        ),
        Text(
          "$barPercentage%",
          style: Theme.of(context).textTheme.titleLarge!,
        ),
      ],
    );
  }
}
