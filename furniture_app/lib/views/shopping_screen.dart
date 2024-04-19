import 'package:flutter/material.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/cart_controller.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/widgets/cart_in_de_widget.dart';
import 'package:furniture_app/widgets/one_cart_item.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:furniture_app/widgets/shoping_app_bar_widget.dart';
import 'package:get/get.dart';

/* Created By: Tushar Jethva
 */
class MyShoppingScreen extends StatefulWidget {
  static const routeName = "/shopingScreen";
  const MyShoppingScreen({super.key});

  @override
  State<MyShoppingScreen> createState() => _MyShoppingScreenState();
}

class _MyShoppingScreenState extends State<MyShoppingScreen> {
  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(MyCartController());
    final theme = Theme.of(context);
    return Obx(
      () => Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(
                double.infinity, getHeight(height: 0.14, context: context)),
            child: Padding(
              padding: EdgeInsets.only(
                  top: getHeight(height: 0.05, context: context),
                  left: getWidth(width: 0.02, context: context),
                  right: getWidth(width: 0.005, context: context)),
              child: const MyShopingAppBar(),
            )),
        body: cartController.cartItems.isEmpty
            ? Center(
                child: MyReusableText(
                    content: "Please do shome shopping, Cart is empty!",
                    style: theme.textTheme.bodyMedium!),
              )
            : ListView.builder(
                itemCount: cartController.cartItems.length,
                itemBuilder: ((context, index) {
                  late ItemModel itemModel;
                  for (int i = 0; i < items.length; i++) {
                    if (ItemModel.fromJson(items[i]).id ==
                        cartController.cartItems[index].itemId) {
                      itemModel = ItemModel.fromJson(items[i]);
                      cartController.listOfItems.add(itemModel);
                      break;
                    }
                  }
                  return Obx(
                    () => MyOneCartWidget(
                      popularItemModel: itemModel,
                      cartModel: cartController.cartItems[index],
                      index: index,
                      widget: MyCartInDeWidget(
                        cartModel: cartController.cartItems[index],
                      ),
                    ),
                  );
                }),
              ),
      ),
    );
  }
}
