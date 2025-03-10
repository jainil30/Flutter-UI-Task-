import 'package:flutter/material.dart';
import 'package:furniture_app/common/bottom_nav.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/custom_elevated_btn.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : BottomSheet of Payments Screen
 */
class PaymentsBottomSheet extends StatelessWidget {
  const PaymentsBottomSheet({super.key, this.totalPaymentAmount});

  final double? totalPaymentAmount;
  Widget build(BuildContext context) {
    final cartController = Get.put(MyCartController());
    double total = cartController.totalAmount.value;
    return Container(
      height: getHeight(height: 0.21, context: context),
      decoration: BoxDecoration(
          color: Theme.of(context).hoverColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyReusableText(
                  content: "Total Payment",
                  style: Theme.of(context).textTheme.displayMedium!,
                ),
                MyReusableText(
                  content:
                      "\$${(totalPaymentAmount != null) ? totalPaymentAmount!.toStringAsFixed(2) : 0}",
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: priceColor),
                )
              ],
            ),
            Gap(24),
            CustomElevatedButton(
              text: "Payments",
              onClickFunction: () {
                Get.snackbar("Payment Done", "", icon: Icon(Icons.payments));
                cartController.cartItems.clear();
                Navigator.pushNamed(context, MyBottomNavigation.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
