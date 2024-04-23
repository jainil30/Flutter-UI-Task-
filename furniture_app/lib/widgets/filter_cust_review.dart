import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/filter_controller.dart';
import 'package:furniture_app/widgets/custom_filter_container.dart';
import 'package:get/get.dart';

class MyCustomerReviewWidget extends StatelessWidget {
  const  MyCustomerReviewWidget({
    super.key,
  });

  final int starIndex = 5;

  @override
  Widget build(BuildContext context) {
        final theme = Theme.of(context);
    final filterController = Get.put(MyFilterController());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: getHeight(height: 0.05, context: context),
        child: ListView.builder(
          
          itemCount: 5,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                filterController.setStarIndex = index;
              },
              child: Obx(
                () => MyCustomFilterContainer(
                  text: stars[index],
                  path: "assets/icons/star_icon.svg",
                  style: filterController.starIndex == index
                      ? theme.textTheme.titleMedium!
                          .copyWith(fontSize: 14,color: white)
                      : theme.textTheme.titleMedium!
                          .copyWith(fontSize: 14, color: greyColor),
                  color: filterController.starIndex == index
                      ? primaryColor
                      : theme.hoverColor,
                  iconColor: filterController.starIndex == index
                      ? white
                      : starsColor,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}