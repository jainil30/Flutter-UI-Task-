import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/review_controller.dart';
import 'package:furniture_app/widgets/custom_elevated_btn.dart';
import 'package:furniture_app/widgets/text_form_field_with_suffix_icon.dart';
import 'package:get/get.dart';

import '../widgets/custom_back_icon_button.dart';
import '../widgets/review_menu.dart';
import '../widgets/review_rating_widget.dart';

/*
    Created By : Jainil Dalwadi
 */

class ReviewScreen extends StatelessWidget {
  ReviewScreen({super.key});

  FocusNode commentFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    var reviewController = Get.put(ReviewScreenController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                onClickFunction: () {
                  FocusScope.of(context).requestFocus(commentFocusNode);
                },
              ),
              Container(
                  height: getHeight(height: 0.49, context: context),
                  child: ReviewMenu()),
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                child: Form(
                  key: reviewController.reviewFormKey,
                  child: TextFormFieldWithSuffixIcon(
                    focusNode: commentFocusNode,
                    hintText: "Add a Comment",
                    controller: reviewController.addReviewController,
                    formKey: reviewController.reviewFormKey,
                    messageOnEmpty: "Blank Comment is not allowed",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
