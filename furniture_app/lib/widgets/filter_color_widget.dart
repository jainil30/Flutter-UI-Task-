import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/filter_controller.dart';
import 'package:furniture_app/widgets/custom_filter_colors.dart';
import 'package:get/get.dart';



class AllColorWidget extends StatelessWidget {
  const AllColorWidget({
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
                filterController.setColorIndex = index;
              },
              child: Obx(
                () => MyCustomFilterColor(
                  text: brands[index],
                  path: "assets/icons/true_icon.svg",
                  style: filterController.colorIndex == index
                      ? theme.textTheme.titleMedium!
                          .copyWith(fontSize: 14)
                      : theme.textTheme.titleMedium!
                          .copyWith(fontSize: 14, color: greyColor),
                  color: theme.hoverColor,
                  colorOfContainer: colorsList[index],
                  iconColor: filterController.colorIndex == index
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