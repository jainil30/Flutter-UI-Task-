import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/cart_controller.dart';
import 'package:furniture_app/widgets/custom_elevated_btn.dart';
import 'package:furniture_app/widgets/payment_confirmation_bottomsheet.dart';

import 'package:furniture_app/controllers/cart_controller.dart';


import '../common/colors.dart';
import '../common/sizes.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Bottomsheet of Checkout Screen
 */
class PaymentAmountWidget extends StatelessWidget {
  const PaymentAmountWidget(
      {super.key, required this.itemTotal, required this.deliveryFee});
  final double? itemTotal;
  final double? deliveryFee;
  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(MyCartController());
    double total = itemTotal! + deliveryFee!;
    return Container(
      height: getHeight(height: 0.35, context: context),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).hoverColor,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Amount",
              style: Theme.of(context).textTheme.displayMedium!,
            ),
            Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Item Total",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: greyColor)),
                Text("\$${itemTotal!.toStringAsFixed(2)}",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: priceColor))
              ],
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery Fee",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: greyColor)),
                Text("\$$deliveryFee",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: priceColor))
              ],
            ),
            Gap(5),
            Divider(
              color: greyColor,
              thickness: 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: Theme.of(context).textTheme.displayMedium!,
                ),
                Text("\$ ${total.toStringAsFixed(2)}",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: priceColor))
              ],
            ),
            Gap(20),
            CustomElevatedButton(
              text: "Payment",
              onClickFunction: () {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return PaymentConfirmationBottomSheet();
                  },
                );
                cartController.totalAmountF();
              },
            )
          ],
        ),
      ),
    );
  }
}
