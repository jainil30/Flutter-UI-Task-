import 'package:flutter/material.dart';

import 'custom_review_bar.dart';

class ReviewBarMenu extends StatelessWidget {
  final int? barPercentage5Star;
  final int? barPercentage4Star;
  final int? barPercentage3Star;
  final int? barPercentage2Star;
  final int? barPercentage1Star;

  const ReviewBarMenu(
      {super.key,
      this.barPercentage5Star,
      this.barPercentage4Star,
      this.barPercentage3Star,
      this.barPercentage2Star,
      this.barPercentage1Star});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomReviewBar(
          stars: 5,
          barPercentage: barPercentage5Star!,
        ),
        CustomReviewBar(
          stars: 4,
          barPercentage: barPercentage4Star!,
        ),
        CustomReviewBar(
          stars: 3,
          barPercentage: barPercentage3Star!,
        ),
        CustomReviewBar(
          stars: 2,
          barPercentage: barPercentage2Star!,
        ),
        CustomReviewBar(
          stars: 1,
          barPercentage: barPercentage1Star!,
        ),
      ],
    );
  }
}
