import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/controllers/catetgory_controller.dart';
import 'package:furniture_app/widgets/custom_one_category.dart';
import 'package:get/get.dart';

/*Created By: Tushar Jethva
  used_for: to show all categories 
  screen: home_screen
 */
class CustomCategories extends StatelessWidget {
  const CustomCategories({
    super.key,
    required this.data,
    required this.categoryController,
    required this.theme,
    required this.index
  });

  final Map<String, String> data;
  final MyCategoryController categoryController;
  final ThemeData theme;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MyCustomOneCategory(
            buttonName: data["label"]!,
            onPressed: () {
              categoryController.setCurrentCategoryIndex = index;
            },
            height: 0.02,
            width: 0.15,
            color: categoryController.currentCategoryIndex==index?primaryColor:theme.hoverColor,
            style: theme.textTheme.titleMedium!.copyWith(color: categoryController.currentCategoryIndex==index?white:greyColor),
            widget: SvgPicture.asset(
              data["imageUrl"]!,
              // ignore: deprecated_member_use
              color: categoryController.currentCategoryIndex==index?white:greyColor,
            )),
    );
  }
}
