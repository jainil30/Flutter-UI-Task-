
import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/cart_controller.dart';
import 'package:furniture_app/models/cart_model.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

/*Created By: Tushar Jethva
  used_for: to show item name, price, shop name
  screen: shopping_screen
  constructor: CartModel,ItemModel
 */
class MyCartItemDescription extends StatelessWidget {
  const MyCartItemDescription({
    super.key,
    required this.popularItemModel,
    required this.cartModel,
  });

  final ItemModel popularItemModel;
  final MyCartModel cartModel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: getHeight(height: 0.1, context: context),
          width: getWidth(width: 0.1, context: context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                popularItemModel.itemName!,
                maxLines: 1,
                style: theme.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis),
              ),
              MyReusableText(
                  content: popularItemModel.shopName!,
                  style: theme.textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w400, color: greyColor))
            ],
          ),
        ),
        GetBuilder<MyCartController>(builder: (controller) {
          return MyReusableText(
            content:
                "\$${(cartModel.quantity! * popularItemModel.price!).toStringAsFixed(2)}",
            style: theme.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w500, color: priceColor),
          );
        }),
      ],
    );
  }
}
