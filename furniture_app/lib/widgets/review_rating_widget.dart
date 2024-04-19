import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/widgets/review_bar_menu.dart';

import '../common/colors.dart';
import '../constants/icons.dart';

class ReviewRatingWidget extends StatelessWidget {
  const ReviewRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "4.6",
              style: Theme.of(context).textTheme.displayLarge!,
            ),
            SvgPicture.asset(IconsConstants.STARS),
            Text(
              "367 Reviews",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: greyColor),
            )
          ],
        ),
        const Column(
          children: [
            ReviewBarMenu(
              barPercentage1Star: 4,
              barPercentage2Star: 8,
              barPercentage3Star: 12,
              barPercentage4Star: 16,
              barPercentage5Star: 86,
            )
          ],
        )
      ],
    );
  }
}
