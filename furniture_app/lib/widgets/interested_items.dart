import 'package:flutter/material.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/interested_items_controller.dart';
import 'package:furniture_app/views/item_details_screen.dart';
import 'package:furniture_app/widgets/custom_interested_one_widget.dart';
import 'package:get/get.dart';

class MyInterestedItems extends StatelessWidget {
  const MyInterestedItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final intrestedItemController = Get.put(MyItemsController());
    intrestedItemController.setInteretedItemsList(interestedItems);
    return SizedBox(
      height: getHeight(height: 0.31, context: context),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(intrestedItemController.intrestedItems.length, (index) {
          return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyItemDetailsScreen.routeName,
                    arguments: intrestedItemController.intrestedItems[index]);
              },
              child: MyOneInterestedItem(
                interestedItemModel: intrestedItemController.intrestedItems[index],
              ));
        }),
      ),
    );
  }
}
