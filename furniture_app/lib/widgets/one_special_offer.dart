import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/custom_one_category.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

/*Created By: Tushar Jethva
  used_for:special offer with image and item description
  screen: home_screen
 */
class MyOneSpecialOffer extends StatelessWidget {
  const MyOneSpecialOffer({
    super.key,
    required this.specialOfferData,
  });

  final Map<String, String> specialOfferData;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        SizedBox(
          width: getWidth(width: 0.02, context: context),
        ),
        Container(
          // margin: EdgeInsets.only(right: getWidth(width: 0.02, context: context)),
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(width: 0.025, context: context),
              vertical: getHeight(height: 0.025, context: context)),
          width: getWidth(width: 0.35, context: context),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(specialOfferData["imageUrl"]!),
                  fit: BoxFit.cover,
                  opacity: 0.9),
              color: greyColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyReusableText(
                  content: specialOfferData["discount"]!,
                  style: theme.textTheme.displayMedium!
                      .copyWith(fontWeight: FontWeight.w600, color: white)),
              MyReusableText(
                  content: specialOfferData["title"]!,
                  style: theme.textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w400, fontSize: 14, color: white)),
              Gap(getHeight(height: 0.038, context: context)),
              MyCustomOneCategory(
                buttonName: specialOfferData["btnName"]!,
                height: 0.05,
                width: 0.18,
                widget: const SizedBox(),
                style: theme.textTheme.titleMedium!.copyWith(color: white),
                onPressed: () {
                  Get.snackbar("Learn",
                      "This item is on limited period hurry up for buy!");
                },
                color: primaryColor,
              )
            ],
          ),
        ),
        SizedBox(
          width: getWidth(width: 0.005, context: context),
        ),
      ],
    );
  }
}
