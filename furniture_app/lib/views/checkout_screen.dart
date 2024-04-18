import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/payments_menu.dart';
import 'package:get/get.dart';

import '../widgets/address_menu.dart';
import '../widgets/custom_back_icon_button.dart';
import '../widgets/payment_amount_widget.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leadingWidth: 80,
        leading: Container(
          margin: EdgeInsets.only(left: 34, top: 10),
          child: CustomBackIconButton(
            icon: Icons.arrow_back,
            function: Get.back,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Check Out",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        // primary: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Column(
            children: [
              Container(
                height: getHeight(height: 0.25, context: context),
                child: AddressMenu(),
              ),
              Container(
                height: getHeight(height: 0.4, context: context),
                child: PaymentMenu(),
              ),
              PaymentAmountWidget(
                itemTotal: 367.65,
                deliveryFee: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
