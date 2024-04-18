import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants/icons.dart';
import 'package:furniture_app/widgets/custom_elevated_btn.dart';
import 'package:furniture_app/widgets/custom_elevated_btn_icon.dart';
import 'package:gap/gap.dart';

import '../common/colors.dart';
import '../common/sizes.dart';
import '../constants/strings.dart';

class PaymentConfirmationBottomSheet extends StatelessWidget {
  const PaymentConfirmationBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(height: 0.61, context: context),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          color: Theme.of(context).hoverColor),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(10),
            Container(
              width: 84,
              height: 84,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(42),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SvgPicture.asset(IconsConstants.TICK_MARK),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24, bottom: 8),
              width: 200,
              child: Text(
                softWrap: true,
                StringConstants.THANK_YOU_MESSAGE_AFTER_ORDER,
                style: Theme.of(context).textTheme.displayMedium!,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: getWidth(width: 0.3, context: context),
              child: Text(
                textAlign: TextAlign.center,
                StringConstants.ORDER_PLACED_SUCCESSFULLY,
                maxLines: 3,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: greyColor, fontWeight: FontWeight.w100),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: CustomElevatedIconButton(
                text: "Track Your Order",
                onClickFunction: () => Navigator.pop(context),
                imagePath: "",
                color: Colors.white,
                elevation: 0.5,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16, bottom: 24),
              child: CustomElevatedButton(
                text: "Track Your Order",
                onClickFunction: () =>
                    Navigator.pushNamed(context, "/trackOrder"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: getWidth(width: 0.3, context: context),
              child: Text(
                textAlign: TextAlign.center,
                "You can order somethings Also",
                maxLines: 3,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: greyColor, fontWeight: FontWeight.w100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
