import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:get/get.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Horizontal List of payment methods in Payment Screen
 */
class PaymentMethodHorizontalChipList extends StatelessWidget {
  const PaymentMethodHorizontalChipList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 24,
      ),
      // color: Colors.red,
      height: getHeight(height: 0.175, context: context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyReusableText(
              content: "Choose Payment Method",
              style: Theme.of(context).textTheme.displayMedium!),
          Container(
            height: getHeight(height: 0.1, context: context),
            // color: Colors.red,
            margin: EdgeInsets.only(top: 20),
            child: ListView.builder(
              itemCount: paymentsList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(12),
                  height: 44,
                  width: 64,
                  decoration: BoxDecoration(
                      color: Theme.of(context).hoverColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: InkWell(
                      child: SvgPicture.asset(
                        paymentsList[index]["icon"].toString(),
                      ),
                      onTap: () {
                        Get.snackbar(
                          paymentsList[index]["paymentMethodName"].toString(),
                          "",
                          icon: SvgPicture.asset(
                              paymentsList[index]["icon"].toString()),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
