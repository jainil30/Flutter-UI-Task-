import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/models/cart_model.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/widgets/cart_image.dart';
import 'package:furniture_app/widgets/cart_in_de_widget.dart';
import 'package:furniture_app/widgets/cart_item_des.dart';
import 'package:gap/gap.dart';

class MyOneCartWidget extends StatelessWidget {
  final ItemModel popularItemModel;
  final MyCartModel cartModel;
  final int index;
  const MyOneCartWidget({
    super.key,
    required this.popularItemModel,
    required this.cartModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.all(getHeight(height: 0.02, context: context)),
      padding: EdgeInsets.all(getHeight(height: 0.02, context: context)),
      height: getHeight(height: 0.17, context: context),
      width: getWidth(width: double.infinity, context: context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: theme.hoverColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              MyCartImageWidget(popularItemModel: popularItemModel),
              Gap(getWidth(width: 0.02, context: context)),
              MyCartItemDescription(
                  popularItemModel: popularItemModel, cartModel: cartModel),
            ],
          ),
          MyCartInDeWidget(
            cartModel: cartModel,
          ),
        ],
      ),
    );
  }
}
