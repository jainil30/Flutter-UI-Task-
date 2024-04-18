import 'package:flutter/material.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/controllers/cart_controller.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/widgets/one_cart_item.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:get/get.dart';

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
                      for(int i=0;i<items.length;i++){
                        if(ItemModel.fromJson(items[i]).id == cartController.cartItems[index].itemId){
                          itemModel = ItemModel.fromJson(items[i]);
                          break;
                        }
                      }
                      return Obx(() => MyOneCartWidget(popularItemModel: itemModel, cartModel: cartController.cartItems[index],index: index,));
                    }),
                  
            ),
              
      ),
    );
  }
}
