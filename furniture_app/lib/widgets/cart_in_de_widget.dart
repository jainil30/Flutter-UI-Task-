import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/constants/icons.dart';
import 'package:furniture_app/controllers/cart_controller.dart';
import 'package:furniture_app/models/cart_model.dart';
import 'package:furniture_app/widgets/icrement_decrement_container.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class MyCartInDeWidget extends StatelessWidget {
  const MyCartInDeWidget({
    super.key,
    required this.cartModel,

  });

  final MyCartModel cartModel;


  @override
  Widget build(BuildContext context) {
      final theme = Theme.of(context);
    final cartController = Get.put(MyCartController());
    return Row(
      children: [
        MyIncreDecreContainer(
            onPressed: () {
              cartController.decrementCount(cartModel);
              if(cartModel.quantity==0){
                cartController.removeCartItem(cartModel);
              }
            },
            color: theme.cardColor,
            height: getHeight(height: 0.000045, context: context),
            width: getWidth(width: 0.000045, context: context),
            child: Image.asset(
              IconsConstants.MINUS_ICON,
            )),
        Gap(getWidth(width: 0.02, context: context)),
        GetBuilder<MyCartController>(builder: (controller) {
          return MyReusableText(
              content: cartModel.quantity!.toString(),
              style: theme.textTheme.bodyMedium!);
        }),
        Gap(getWidth(width: 0.02, context: context)),
        MyIncreDecreContainer(
            onPressed: () {
              if (cartModel.quantity != 10) {
                cartController.incrementCount(cartModel);
              }
            },
            color: primaryColor,
            height: getHeight(height: 0.000045, context: context),
            width: getWidth(width: 0.000045, context: context),
            child: const Icon(
              Icons.add,
              color: white,
            ))
      ],
    );
  }
}
