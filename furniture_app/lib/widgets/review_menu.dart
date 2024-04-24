import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/review_controller.dart';
import 'package:get/get.dart';

import 'detailed_review_widget.dart';

class ReviewMenu extends GetView<ReviewScreenController> {
  const ReviewMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemBuilder: (context, index) {
          return DetailedReviewWidget(
            imagePath: controller.reviews[index]!.reviewerProfilePicture,
            detailedReview: controller.reviews[index]!.review,
            isSvg: true,
            userName: controller.reviews[index]!.reviewerName,
            isTooMuch: false,
            timeAgo: controller.reviews[index]!.reviewTime,
          );
        },
        itemCount: controller.reviews.length,
      ),
    );
  }
}
