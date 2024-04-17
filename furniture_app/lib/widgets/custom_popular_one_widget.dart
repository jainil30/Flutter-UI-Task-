import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:gap/gap.dart';

class MyOnePopularWidget extends StatelessWidget {
  final ItemModel popularItemModel;
  const MyOnePopularWidget({super.key, required this.popularItemModel});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(getHeight(height: 0.02, context: context)),
      height: getHeight(height: 0.15, context: context),
      width: getWidth(width: 0.33, context: context),
      margin: EdgeInsets.only(right: getWidth(width: 0.02, context: context)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: theme.hoverColor,
      ),
      child: Row(
        children: [
          Container(
            height: getHeight(height: 0.1, context: context),
            width: getWidth(width: 0.1, context: context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: theme.cardColor,
                image: DecorationImage(
                    image: AssetImage(popularItemModel.imageUrl!))),
          ),
          Gap(getWidth(width: 0.02, context: context)),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                     popularItemModel.itemName!,
                     maxLines: 1,
                      style: theme.textTheme.bodyLarge!
                          .copyWith(fontWeight: FontWeight.w600,overflow: TextOverflow.ellipsis)),
                  MyReusableText(
                      content: popularItemModel.shopName!,
                      style: theme.textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w400, color: greyColor))
                ],
              ),
              MyReusableText(
                  content: "\$${popularItemModel.price}",
                  style: theme.textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.w500, color: priceColor))
            ],
          )
        ],
      ),
    );
  }
}
