import 'package:flutter/material.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/interested_items_controller.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/views/item_details_screen.dart';
import 'package:furniture_app/widgets/custom_popular_one_widget.dart';
import 'package:get/get.dart';

class MyPopularItems extends StatelessWidget {
  const MyPopularItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final intrestedItemController = Get.put(MyItemsController());
    intrestedItemController.setPopularItemsList(popularItems);
    return SizedBox(
      height: getHeight(height: 0.15, context: context),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(intrestedItemController.intrestedItems.length, (index) {
          ItemModel popularItemModel = intrestedItemController.popularItems[index];
          return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyItemDetailsScreen.routeName,
                    arguments: popularItemModel);
              },
              child: MyOnePopularWidget(
                popularItemModel: popularItemModel,
              ));
        }),
      ),
    );
  }
}
