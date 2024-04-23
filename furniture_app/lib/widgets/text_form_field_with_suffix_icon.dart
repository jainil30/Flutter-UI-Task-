import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common/colors.dart';
import '../constants/icons.dart';

class TextFormFieldWithSuffixIcon extends StatelessWidget {
  TextFormFieldWithSuffixIcon(
      {super.key,
      required this.controller,
      this.IconPath,
      this.hintText,
      this.inputType,
      required this.formKey});

  final TextEditingController controller;
  final String? IconPath;
  final String? hintText;
  final TextInputType? inputType;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType ?? TextInputType.text,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: hintText! ?? " ",
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
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(20)),
              // margin: EdgeInsets.only(right: 8),
              child: Container(
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(IconsConstants.SEND_ICON)))),
      validator: (value) {
        if (value!.isEmpty) {
          return "Promo code is required ";
        }
      },
    );
  }
}
