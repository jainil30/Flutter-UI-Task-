import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/controllers/checkout_controller.dart';
import 'package:get/get.dart';

import '../constants/icons.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Single Payment Widget in PaymentMenu
 */
class PaymentWdiget extends GetView<CheckoutController> {
  const PaymentWdiget({super.key, this.index});

  final int? index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, top: 8.0, bottom: 8.0),
      child: (index == controller.payments.length - 1)
          ? ListTile(
              leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).datePickerTheme.backgroundColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    IconsConstants.ALL_OTHER_ICON,
                    color: Theme.of(context).appBarTheme.foregroundColor,
                  ),
                ),
              ),
              title: Text(
                "All 12 Methods",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () => Navigator.pushNamed(context, "/"),
            )
          : Obx(
              () => RadioListTile(
                controlAffinity: ListTileControlAffinity.trailing,
                activeColor: primaryColor,
                secondary: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).datePickerTheme.backgroundColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      controller.payments[index!].icon.toString(),
                    ),
                  ),
                ),
                value: controller.payments[index!].paymentId,
                groupValue: controller.selectedPayment.value,
                onChanged: (value) {
                  controller.selectedPayment.value = int.parse(
                      controller.payments[index!].paymentId.toString());
                  print(controller.selectedPayment.value);
                },
                title: Text(
                  "${controller.payments[index!].paymentMethodName.toString()}",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ),
    );
  }
}
