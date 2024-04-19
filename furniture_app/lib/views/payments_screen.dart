import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/icons.dart';
import '../widgets/credit_card_widget.dart';
import '../widgets/custom_back_icon_button.dart';
import '../widgets/payment_method_horizontal_chip_list.dart';
import '../widgets/payments_bottom_sheet.dart';
import '../widgets/promo_code_widget.dart';

class PaymentScreen extends StatelessWidget {
  static const String routeName = "/paymentScreen";
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      resizeToAvoidBottomInset: true,
      extendBody: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        leadingWidth: 70,
        leading: Container(
          margin: EdgeInsets.only(left: 24, top: 10),
          child: CustomBackIconButton(
            icon: Icons.arrow_back,
            function: Get.back,
          ),
        ),
        title: Text(
          "Payments",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CreditCardWidget(
                cardHolderName: "Jainil Kishorbhai Dalwadi",
                cardIcon: IconsConstants.CREDIT_CARD_ICON,
                cardHolderAccountNumber: "4562   1122   4595   7852",
                expiryDate: "16/23",
                cvcNumber: "962",
                cardName: "Master Card",
              ),
              const PaymentMethodHorizontalChipList(),
              PromoCodeWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: PaymentsBottomSheet(
        totalPaymentAmount: 86.680,
      ),
    );
  }
}
