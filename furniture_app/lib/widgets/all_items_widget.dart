import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/widgets/cart_image.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:gap/gap.dart';

/*Created By: Tushar Jethva
  used_for: For view all items
  screen: all_item_screens
  constructor: ItemModel,Widget
 */
class MyOneAllItemWidget extends StatelessWidget {
  final ItemModel item;
  final Widget widget;
  const MyOneAllItemWidget(
      {super.key, required this.item, required this.widget});

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
              MyCartImageWidget(popularItemModel: item),
              Gap(getWidth(width: 0.02, context: context)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getHeight(height: 0.1, context: context),
                    width: getWidth(width: 0.2, context: context),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.itemName!,
                          maxLines: 1,
                          style: theme.textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis),
                        ),
                        MyReusableText(
                            content: item.shopName!,
                            style: theme.textTheme.titleMedium!.copyWith(
                                fontWeight: FontWeight.w400, color: greyColor))
                      ],
                    ),
                  ),
                  MyReusableText(
                    content: "\$${item.price!}",
                    style: theme.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w500, color: priceColor),
                  ),
                ],
              )
            ],
          ),
          widget
        ],
      ),
    );
  }
}
