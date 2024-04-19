import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/custom_elevated_btn.dart';
import 'package:get/get.dart';

import '../widgets/custom_back_icon_button.dart';
import '../widgets/review_rating_widget.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              ReviewRatingWidget(),
              CustomElevatedButton(
                text: "Write a Review",
                onClickFunction: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
