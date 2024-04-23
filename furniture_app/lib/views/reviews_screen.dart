import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/review_controller.dart';
import 'package:furniture_app/widgets/custom_elevated_btn.dart';
import 'package:furniture_app/widgets/detailed_review_widget.dart';
import 'package:furniture_app/widgets/text_form_field_with_suffix_icon.dart';
import 'package:get/get.dart';

import '../widgets/custom_back_icon_button.dart';
import '../widgets/review_rating_widget.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var reviewController = Get.put(ReviewScreenController());
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leadingWidth: 80,
        leading: Container(
          margin: EdgeInsets.only(left: 34, top: 10),
          child: CustomBackIconButton(
            icon: Icons.arrow_back,
            function: Get.back,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Reviews",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
          child: Column(
            children: [
              const ReviewRatingWidget(),
              CustomElevatedButton(
                text: "Write a Review",
                onClickFunction: () {},
              ),
              const DetailedReviewWidget(
                imagePath: "",
                detailedReview:
                    "nice studio, the app where You can buy Your furniture with just a top without any hassle_ products are realy awesome.....",
                isSvg: true,
                userName: "Angelina Anderson",
                isTooMuch: true,
              ),
              const DetailedReviewWidget(
                imagePath: "",
                detailedReview:
                    "Exellent place to discuss your  furniture ideas and get good suggetions and details.",
                isSvg: true,
                userName: "Anila Erin Maha",
                isTooMuch: false,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(24.0),
        child: TextFormFieldWithSuffixIcon(
            hintText: "Add a Comment",
            controller: reviewController.addReviewController,
            formKey: reviewController.reviewFormKey),
      ),
    );
  }
}
