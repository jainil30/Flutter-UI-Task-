import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:gap/gap.dart';

import '../common/colors.dart';

/*
  Creadted By : Jainil Dalwadi
  Purpose: Shows Credit Card on Payment Screen
 */

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget(
      {super.key,
      this.cardHolderName,
      this.cardHolderAccountNumber,
      this.expiryDate,
      this.cvcNumber,
      this.cardName,
      this.cardIcon});

  final String? cardHolderName;
  final String? cardHolderAccountNumber;
  final String? expiryDate;
  final String? cvcNumber;
  final String? cardName;
  final String? cardIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 24, right: 24, top: 24),
      height: getHeight(height: 0.24, context: context),
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
                  cardHolderName!,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: lightTextColor),
                ),
                Container(
                    width: 50, height: 50, child: SvgPicture.asset(cardIcon!))
              ],
            ),
            Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(cardHolderAccountNumber!,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
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
                      expiryDate!,
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
                      cvcNumber!,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: lightTextColor),
                    )
                  ],
                ),
                Text(
                  cardName!,
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
    );
  }
}
