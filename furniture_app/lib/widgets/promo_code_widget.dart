// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/custom_elevated_btn.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Promo Code Part in Payment Screen
 */
class PromoCodeWidget extends StatelessWidget {
   PromoCodeWidget({super.key});

  var promoCodeController = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyReusableText(
              content: "Promo Code",
              style: Theme.of(context).textTheme.displayMedium!),
          Gap(16),
          Form(
            key: _formKey,
            child: TextFormField(
              controller: promoCodeController,
              keyboardType: TextInputType.text,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                  hintText: "Promo Code",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: greyColor),
                  filled: true,
                  fillColor: Theme.of(context).hoverColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: Container(
                    margin: EdgeInsets.only(right: 8),
                    height: getHeight(height: 0.07, context: context),
                    width: getWidth(width: 0.11, context: context),
                    child: CustomElevatedButton(
                      text: "Apply",
                      onClickFunction: () {
                        if (_formKey.currentState!.validate()) {
                          Get.snackbar("Congratulations!!",
                              "${promoCodeController.text} is applied",
                              icon: Icon(Icons.discount_rounded));
                        }
                      },
                    ),
                  )),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Promo code is required ";
                }
              },
            ),
          ),
        ]);
  }
}
