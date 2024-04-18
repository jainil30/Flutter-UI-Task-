import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/favourite_controller.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/widgets/favorite_one_widget.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:get/get.dart';

class MyFavouriteScreen extends StatefulWidget {
  const MyFavouriteScreen({super.key});

  @override
  State<MyFavouriteScreen> createState() => _MyFavouriteScreenState();
}

class _MyFavouriteScreenState extends State<MyFavouriteScreen> {
  final favouriteController = Get.put(MyFavouriteController());

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Obx(
      () => Scaffold(
        body: favouriteController.favouriteItems.isEmpty
            ? Center(
                child: MyReusableText(
                    content: "Please make some favourites!",
                    style: theme.textTheme.bodyMedium!),
              )
            : GetBuilder<MyFavouriteController>(
                builder: (controller) {
                  return Padding(
                    padding:  EdgeInsets.all(getHeight(height: 0.02, context: context)),
                    child: GridView.builder(
                      itemCount: favouriteController.favouriteItems.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          mainAxisExtent:
                              getHeight(height: 0.3, context: context)),
                      itemBuilder: ((context, index) {
                        ItemModel item =
                            favouriteController.favouriteItems[index];
                        return MyFavouriteOneWidget(item: item,);
                      }),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
