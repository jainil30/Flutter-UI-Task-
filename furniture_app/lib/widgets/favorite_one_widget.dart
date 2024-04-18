
import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/favourite_controller.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:get/get.dart';

class MyFavouriteOneWidget extends StatelessWidget {
  const MyFavouriteOneWidget({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
  final favouriteController = Get.put(MyFavouriteController());
    final theme = Theme.of(context);

    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topRight,
            height: getHeight(height: 0.2, context: context),
            width: getWidth(width: 0.2, context: context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: theme.hoverColor,
              image: DecorationImage(
                image: AssetImage(item.imageUrl!),
                scale: 2,
                fit: BoxFit.contain
              ),
            ),
            child: GestureDetector(
              onTap: () {
                favouriteController.changeFavoriteTrue(item);
                item.isLiked!
                    ? favouriteController.addFavourite(item)
                    : favouriteController
                        .removeFavourite(item);
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  child: item.isLiked! == true
                      ? const Icon(
                          Icons.favorite_rounded,
                          color: primaryColor,
                        )
                      : const Icon(
                          Icons.favorite_outline,
                        ),
                ),
              ),
            ),
          ),
          MyReusableText(
              content: item.itemName!,
              style: theme.textTheme.bodyLarge!),
          MyReusableText(
              content: "\$${item.price}",
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: priceColor))
        ],
      ),
    );
  }
}
