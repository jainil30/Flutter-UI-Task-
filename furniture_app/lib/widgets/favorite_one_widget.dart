import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            ),
            child: Stack(children: [
              SizedBox(
                height: getHeight(height: 0.2, context: context),
                width: getWidth(width: 0.2, context: context),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getHeight(height: 0.12, context: context),
                  width: getWidth(width: 0.15, context: context),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(item.imageUrl!),
                          fit: BoxFit.contain)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  favouriteController.changeFavoriteTrue(item);
                  item.isLiked!
                      ? favouriteController.addFavourite(item)
                      : favouriteController.removeFavourite(item);
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.topRight,
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
            ]),
          ),
          MyReusableText(
              content: item.itemName!, style: theme.textTheme.bodyLarge!),
          MyReusableText(
              content: "\$${item.price}",
              style: theme.textTheme.bodyLarge!.copyWith(color: priceColor))
        ],
      ),
    );
  }
}
