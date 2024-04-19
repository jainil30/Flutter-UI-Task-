import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/constants/icons.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/widgets/custom_header_row.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:gap/gap.dart';

/*Created By: Tushar Jethva
  used_for: bottom bar with description, incrementer and decremeter and add to cart button
  screen: item_details_screen
 */

class MyItemDetailsWidget extends StatelessWidget {
  const MyItemDetailsWidget({
    super.key,
    required this.item,
    required this.theme,
  });

  final ItemModel item;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: getHeight(height: 0.4, context: context),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(item.imageBig!), fit: BoxFit.contain)),
        ),
        Gap(getHeight(height: 0.02, context: context)),
        MyCustomHeaderRow(
          leftText: item.itemName!,
          rightText: "\$${item.price}",
          leftStyle: theme.textTheme.displayMedium!,
          rightStyle:
              theme.textTheme.displayMedium!.copyWith(color: priceColor),
          onPressedRight: () {},
        ),
        ListTile(
          title: Row(
            children: [
              SvgPicture.asset(IconsConstants.PERSON_ICON),
              Gap(getWidth(width: 0.01, context: context)),
              MyReusableText(
                  content: "341 Seen",
                  style:
                      theme.textTheme.titleMedium!.copyWith(color: greyColor)),
              Gap(getWidth(width: 0.02, context: context)),
              SvgPicture.asset(IconsConstants.FAVOURITE_ICON),
              Gap(getWidth(width: 0.01, context: context)),
              MyReusableText(
                  content: "${item.likes} Liked",
                  style:
                      theme.textTheme.titleMedium!.copyWith(color: greyColor)),
            ],
          ),
          subtitle: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image.asset(IconsConstants.STARS_ICON),
            ),
          ),
        ),
        Gap(getHeight(height: 0.02, context: context)),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(width: 0.03, context: context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyReusableText(
                  content: "Description",
                  style: theme.textTheme.displayMedium!),
              Gap(getHeight(height: 0.01, context: context)),
              MyReusableText(
                  content: item.description!,
                  style:
                      theme.textTheme.titleMedium!.copyWith(color: greyColor))
            ],
          ),
        ),
      ],
    );
  }
}
