
import 'package:flutter/material.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/catetgory_controller.dart';
import 'package:furniture_app/widgets/custom_categories.dart';
import 'package:get/get.dart';

class MyCategories extends StatelessWidget {
  const MyCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  final categoryController = Get.put(MyCategoryController());
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.only(
          left: getWidth(width: 0.02, context: context)),
      child: SizedBox(
        height: getHeight(height: 0.05, context: context),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(categories.length, (index) {
            final data = categories[index];
            return CustomCategories(
              data: data,
              categoryController: categoryController,
              theme: theme,
              index: index,
            );
          }),
        ),
      ),
    );
  }
}