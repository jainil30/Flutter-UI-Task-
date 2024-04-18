import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/cart_controller.dart';
import 'package:furniture_app/views/checkout_screen.dart';
import 'package:furniture_app/widgets/custom_button.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class MyShopingAppBar extends StatefulWidget {
  const MyShopingAppBar({
    super.key,
  });

  @override
  State<MyShopingAppBar> createState() => _MyShopingAppBarState();
}

class _MyShopingAppBarState extends State<MyShopingAppBar> {
  final cartController = Get.put(MyCartController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      cartController.totalAmountF();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // cartController.totalAmount.value = cartController.totalAmountF();
    return Column(
      children: [
        Row(
          children: [
            MyReusableText(
                content: "Subtotal", style: theme.textTheme.displayLarge!),
            Gap(getWidth(width: 0.01, context: context)),
            Obx(
              () => MyReusableText(
                  content:
                      "\$${cartController.totalAmount.value.toStringAsFixed(2)}",
                  style: theme.textTheme.displayLarge!),
            ),
          ],
        ),
        Obx(
          () => MyCustomButton(
              buttonName:
                  "Proceed to Buy (${cartController.cartItems.length}) items",
              onPressed: () {
                if (cartController.cartItems.isNotEmpty) {
                  Navigator.pushNamed(context, CheckOutScreen.routeName);
                } else {
                  Get.snackbar("Cart", "Please add something in cart!");
                }
              }),
        )
      ],
    );
  }
}
