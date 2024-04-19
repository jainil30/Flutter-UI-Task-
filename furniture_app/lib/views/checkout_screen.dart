import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/cart_controller.dart';
import 'package:furniture_app/widgets/icon_container.dart';
import 'package:furniture_app/widgets/payments_menu.dart';
import 'package:get/get.dart';
import '../widgets/address_menu.dart';
import '../widgets/payment_amount_widget.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Showed when user tries to checkout
 */
class CheckOutScreen extends StatefulWidget {
  static const String routeName = "/checkOut";
  const CheckOutScreen({super.key});
  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(MyCartController());
    double total = cartController.totalAmount.value;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leadingWidth: 70,
        leading: Container(

            margin: const EdgeInsets.only(left: 10, top: 10),
            child: MyIconContainer(
                child: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                })),
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
                itemTotal: total,
                deliveryFee: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
