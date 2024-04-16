import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/initial_page_controller.dart';
import 'package:get/get.dart';

/*Created By: Tushar Jethva

*/

class MyOneDotWidget extends StatelessWidget {
  const MyOneDotWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final initialPageController = Get.put(InitialPageController());
    return SizedBox(
      width: double.infinity,
      height: getHeight(height: 0.03, context: context),
      child: Center(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: List.generate(3, (index) {
            return Obx(
              () => Container(
                margin: const EdgeInsets.only(right: 10),
                height: getHeight(height: 0.012, context: context),
                width: getWidth(width: 0.008, context: context),
                decoration: BoxDecoration(
                  color: initialPageController.initialPage == index
                      ? primaryColor
                      : index == 1
                          ? dot2Color
                          : dot3Color,
                  shape: BoxShape.circle,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
