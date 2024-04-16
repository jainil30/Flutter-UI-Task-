import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Custom TextFormField
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.color,
      required this.textInputType,
      required this.labelText,
      this.showIcon});
  final bool? showIcon;
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final Color? color;
  final TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.titleMedium,
        fillColor: Theme.of(context).hoverColor,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
      ),
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) {
          return "Field is mandatory";
        }

        if (textInputType == TextInputType.emailAddress) {
          if (value.isEmail) {
            return "Invalid email address";
          }
        }

        if (textInputType == TextInputType.phone) {
          if (value.isPhoneNumber) {
            return "Invalid Phone number";
          }
        }
      },
    );
  }
}
