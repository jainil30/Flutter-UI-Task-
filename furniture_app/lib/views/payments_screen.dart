import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/constants/icons.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../widgets/custom_back_icon_button.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, top: 24),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(2, 115, 138, 1),
                  Color.fromRGBO(29, 62, 100, 0.92),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jainil Dalwadi",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: lightTextColor),
                      ),
                      Container(
                          width: 50,
                          height: 50,
                          child:
                              SvgPicture.asset(IconsConstants.CREDIT_CARD_ICON))
                    ],
                  ),
                  Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("4562   1122   4595   7852",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: lightTextColor)),
                    ],
                  ),
                  Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Exp Date",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: creditCardFontColor),
                          ),
                          Text(
                            "16/23",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: lightTextColor),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CVC Number",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: creditCardFontColor),
                          ),
                          Text(
                            "962",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: lightTextColor),
                          )
                        ],
                      ),
                      Text(
                        "Master Card",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: lightTextColor),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
