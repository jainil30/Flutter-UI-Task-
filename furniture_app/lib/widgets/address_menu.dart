import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/checkout_controller.dart';
import 'package:furniture_app/widgets/address_widget.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class AddressMenu extends GetView<CheckoutController> {
  const AddressMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Shipping To",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),
        ),
        Gap(10),
        Expanded(
          child: ListView.builder(
            itemCount: controller.addresses.length,
            primary: false,
            itemBuilder: (context, index) {
              print("Card------->");
              return AddressWidget(index);
            },
          ),
        ),
      ],
    );
  }
}
