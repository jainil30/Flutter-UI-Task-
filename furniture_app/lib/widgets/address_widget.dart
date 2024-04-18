import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/constants/icons.dart';
import 'package:furniture_app/controllers/checkout_controller.dart';
import 'package:get/get.dart';

class AddressWidget extends GetView<CheckoutController> {
  const AddressWidget(this.index, {super.key});

  final int? index;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).hoverColor,
      elevation: 0,
      child: Obx(
        () => RadioListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.addresses[index!].addressType!,
                    style: Theme.of(context).textTheme.titleLarge!,
                  ),
                  Text(
                    controller.addresses[index!].phoneNumber.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: greyColor),
                  ),
                  Text(
                    controller.addresses[index!].address.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: greyColor),
                  ),
                ],
              ),
              (controller.addresses[index!].addressId ==
                      controller.selectedAddress.value)
                  ? InkWell(
                      child: SvgPicture.asset(
                        IconsConstants.EDIT_ICON,
                        color: Theme.of(context).appBarTheme.foregroundColor,
                        // colorFilter: ColorFilter.mode(
                        //     Theme.of(context).appBarTheme.foregroundColor!,
                        //     BlendMode.xor),
                      ),
                      onTap: () =>
                          Get.snackbar("Edit Functionality", "Coming Soon...",
                              icon: Icon(
                                Icons.edit,
                                color: Theme.of(context)
                                    .appBarTheme
                                    .foregroundColor,
                              )),
                    )
                  : SizedBox()
            ],
          ),
          groupValue: controller.selectedAddress.value,
          onChanged: (value) {
            controller.selectedAddress.value =
                int.parse(controller.addresses[index!].addressId.toString());

            print(controller.selectedAddress.value);
          },
          value: controller.addresses[index!].addressId,
          activeColor: primaryColor,
        ),
      ),
    );
  }
}
