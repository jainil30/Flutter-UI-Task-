import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/constants/icons.dart';
import 'package:furniture_app/controllers/cart_controller.dart';
import 'package:furniture_app/controllers/item_count_controller.dart';
import 'package:furniture_app/models/cart_model.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/widgets/custom_one_category.dart';
import 'package:furniture_app/widgets/icrement_decrement_container.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class MyItemDetailsBottomBar extends StatelessWidget {
  final ItemModel item;
  const MyItemDetailsBottomBar({
    required this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final itemCountController = Get.put(ItemCountController());
    final cartController = Get.put(MyCartController());
    itemCountController.setItemCount = 1;
    return Container(
      height: getHeight(height: 0.17, context: context),
      padding: EdgeInsets.all(getHeight(height: 0.03, context: context)),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: theme.hoverColor),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MyIncreDecreContainer(
                      onPressed: () {
                        if (itemCountController.itemCount != 1) {
                          itemCountController.setItemCount =
                              itemCountController.itemCount - 1;
                        }
                      },
                      color: theme.cardColor,
                      height: getHeight(height: 0.000045, context: context),
                      width: getWidth(width: 0.000045, context: context),
                      child: Image.asset(
                        IconsConstants.MINUS_ICON,
                      )),
                  Gap(getWidth(width: 0.02, context: context)),
                  Obx(() => MyReusableText(
                      content: itemCountController.itemCount.toString(),
                      style: theme.textTheme.bodyMedium!)),
                  Gap(getWidth(width: 0.02, context: context)),
                  MyIncreDecreContainer(
                      onPressed: () {
                        itemCountController.setItemCount =
                            itemCountController.itemCount + 1;
                      },
                      color: primaryColor,
                      height: getHeight(height: 0.000045, context: context),
                      width: getWidth(width: 0.000045, context: context),
                      child: const Icon(Icons.add,color: white,))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: getWidth(width: 0.032, context: context)),
                child: Obx(() => MyReusableText(
                    content:
                        "Total: \$${(itemCountController.itemCount * (item.price as double)).toStringAsFixed(2)}",
                    style: theme.textTheme.titleLarge!)),
              )
            ],
          ),
          Gap(getHeight(height: 0.02, context: context)),
          MyCustomOneCategory(
              color: primaryColor,
              buttonName: "Add To Cart",
              onPressed: () {
                  int quantity = itemCountController.itemCount;
                  cartController.addCartItem(MyCartModel(itemId: item.id,quantity: quantity,totalAmount: itemCountController.itemCount * (item.price as double)));
              },
              height: 0.05,
              width: double.infinity,
              style: theme.textTheme.bodyMedium!.copyWith(color: white),
              widget: SvgPicture.asset("assets/images/cart-check.svg"))
        ],
      ),
    );
  }
}
