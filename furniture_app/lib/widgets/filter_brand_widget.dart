import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/filter_controller.dart';
import 'package:furniture_app/widgets/custom_filter_container.dart';
import 'package:get/get.dart';

class AllBrandWidget extends StatelessWidget {
  const AllBrandWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
        final theme = Theme.of(context);
    final filterController = Get.put(MyFilterController());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: getHeight(height: 0.05, context: context),
        child: ListView.builder(
          itemCount: brands.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                filterController.setBrandIndex = index;
              },
              child: Obx(
                () => MyCustomFilterContainer(
                  text: brands[index],
                  path: "assets/icons/true_icon.svg",
                  style: filterController.brandIndex == index
                      ? theme.textTheme.titleMedium!
                          .copyWith(fontSize: 14, color: white)
                      : theme.textTheme.titleMedium!
                          .copyWith(fontSize: 14, color: greyColor),
                  color: filterController.brandIndex == index
                      ? primaryColor
                      : theme.hoverColor,
                  iconColor: filterController.brandIndex == index
                      ? white
                      : greyColor,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}