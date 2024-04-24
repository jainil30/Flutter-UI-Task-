import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/payments_widget.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../controllers/checkout_controller.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Menu Showed in Checkout Screen
 */
class PaymentMenu extends StatelessWidget {
  PaymentMenu({super.key});

  var controller = Get.put(CheckoutController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Payment Method",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),
        ),
        Gap(10),
        Expanded(
          child: ListView.builder(
            itemCount: controller.payments.length,
            primary: false,
            itemBuilder: (context, index) {
              print("PAYMENT------->");
              return PaymentWdiget(
                index: index,
              );
            },
          ),
        ),
      ],
    );
  }
}
