import 'package:flutter/material.dart';
import 'package:furniture_app/common/bottom_nav.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/controllers/cart_controller.dart';
import 'package:furniture_app/widgets/custom_elevated_btn.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:get/get.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Widget with tracking in bottomsheet of TrackOrder Screen
 */
class TrackOrderAddressWidget extends StatelessWidget {
  const TrackOrderAddressWidget(
      {super.key,
      this.fromShop,
      this.toAddress,
      this.fromArea,
      this.toArea,
      this.departureTime,
      this.arrivalTime});

  final String? fromShop;
  final String? toAddress;
  final String? fromArea;
  final String? toArea;
  final String? departureTime;
  final String? arrivalTime;

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(MyCartController());
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Theme.of(context)
                        .datePickerTheme
                        .headerBackgroundColor),
                child: Icon(
                  Icons.watch_later,
                  color:
                      Theme.of(context).datePickerTheme.headerForegroundColor,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyReusableText(
                      content: fromShop!,
                      style: Theme.of(context).textTheme.titleLarge!),
                  MyReusableText(
                      content: "$fromArea | $departureTime",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: greyColor))
                ],
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 30),
            height: 30,
            child: const VerticalDivider(
              thickness: 2,
              width: 2,
              color: greyColor,
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Theme.of(context)
                        .datePickerTheme
                        .headerBackgroundColor),
                child: Icon(
                  Icons.location_on_rounded,
                  color:
                      Theme.of(context).datePickerTheme.headerForegroundColor,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyReusableText(
                      content: toAddress!,
                      style: Theme.of(context).textTheme.titleLarge!),
                  MyReusableText(
                      content: "$toArea | $arrivalTime",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: greyColor))
                ],
              )
            ],
          ),
          CustomElevatedButton(
              text: "Order Received",
              onClickFunction: () {
                Get.snackbar("Congratulations!!", "Enjoy the Product",
                    icon: const Icon(Icons.celebration));
                  cartController.cartItems.clear();
                Navigator.pushNamed(context, MyBottomNavigation.routeName);
              })
        ],
      ),
    );
  }
}
