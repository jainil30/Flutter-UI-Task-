import 'package:flutter/cupertino.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/models/ReviewModel.dart';
import 'package:get/get.dart';

class ReviewScreenController extends GetxController {
  var reviews = <ReviewModel>[].obs;

  TextEditingController addReviewController = TextEditingController();
  var reviewFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllReviews();
  }

  void getAllReviews() {
    for (var review in reviewsList) {
      reviews.add(ReviewModel.fromJson(review));
    }

    printAllReviews();
  }

  void printAllReviews() {
    for (var review in reviews) {
      print(review.reviewerName);
    }
  }

  void addReview(ReviewModel reviewModel) {
    reviews.add(reviewModel);
  }
}
