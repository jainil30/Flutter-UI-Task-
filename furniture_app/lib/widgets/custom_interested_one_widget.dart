import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/widgets/reusable_text.dart';

class MyOneInterestedItem extends StatelessWidget {
  final ItemModel interestedItemModel;
  const MyOneInterestedItem({super.key, required this.interestedItemModel});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        SizedBox(width: getWidth(width: 0.02, context: context),),
        Container(
          padding: EdgeInsets.all(getHeight(height: 0.02, context: context)),
          // margin:  EdgeInsets.only(right: getWidth(width: 0.02, context: context)),
          height: getHeight(height: 0.32, context: context),
          width: getWidth(width: 0.3, context: context),
          decoration: BoxDecoration(
              color: theme.hoverColor, borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  height: getHeight(height: 0.15, context: context),
                  width: getWidth(width: 0.15, context: context),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(interestedItemModel.imageUrl!))),
                ),
              ),
              ListTile(
                title: MyReusableText(
                  content: interestedItemModel.itemName!,
                  style: theme.textTheme.bodyLarge!,
                ),
                subtitle: MyReusableText(
                  content: interestedItemModel.shopName!,
                  style: theme.textTheme.titleMedium!.copyWith(color: greyColor),
                ),
                trailing: Container(
                    padding:
                        EdgeInsets.all(getHeight(height: 0.01, context: context)),
                    decoration: const BoxDecoration(
                        color: primaryColor, shape: BoxShape.circle),
                    child: SvgPicture.asset("assets/images/shoping_bag.svg")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: MyReusableText(
                    content: "\$${interestedItemModel.price}",
                    style: theme.textTheme.bodyLarge!.copyWith(color: priceColor)),
              )
            ],
          ),
        ),
        SizedBox(width: getWidth(width: 0.005, context: context),),
      ],
    );
  }
}
