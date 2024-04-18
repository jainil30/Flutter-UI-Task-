import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/custom_elvated_btn.dart';
import 'package:gap/gap.dart';

import '../common/colors.dart';
import '../common/sizes.dart';

class PaymentAmountWidget extends StatelessWidget {
  const PaymentAmountWidget({super.key, this.itemTotal, this.deliveryFee});
  final double? itemTotal;
  final double? deliveryFee;
  @override
  Widget build(BuildContext context) {
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
                Text("\$$itemTotal",
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
                Text("\$ $total",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: priceColor))
              ],
            ),
            Gap(20),
            CustomElevatedButton(
              text: "Payment",
              onClickFunction: () => Navigator.pushNamed(context, "/"),
            )
          ],
        ),
      ),
    );
  }
}
