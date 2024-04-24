import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/controllers/review_controller.dart';
import 'package:furniture_app/models/ReviewModel.dart';
import 'package:get/get.dart';

import '../common/colors.dart';
import '../constants/icons.dart';

class TextFormFieldWithSuffixIcon extends StatelessWidget {
  TextFormFieldWithSuffixIcon(
      {super.key,
      required this.controller,
      this.IconPath,
      this.hintText,
      this.inputType,
      required this.formKey,
      this.messageOnEmpty,
      this.focusNode});

  final FocusNode? focusNode;
  final TextEditingController controller;
  final String? IconPath;
  final String? hintText;
  final TextInputType? inputType;
  final GlobalKey<FormState> formKey;
  final String? messageOnEmpty;
  @override
  Widget build(BuildContext context) {
    var reviewController = Get.put(ReviewScreenController());
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: inputType ?? TextInputType.text,
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
          suffixIcon: GestureDetector(
            child: Container(
                margin: EdgeInsets.only(right: 2),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(25)),
                // margin: EdgeInsets.only(right: 8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(IconsConstants.SEND_ICON),
                )),
            onTap: () {
              if (reviewController.reviewFormKey.currentState!.validate()) {
                reviewController.addReview(ReviewModel(
                  review: controller.text,
                  reviewerName: "Jainil Dalwadi",
                  reviewerProfilePicture: "",
                  reviewStars: "4.5",
                ));

                controller.text = "";
              }
            },
          )),
      validator: (value) {
        if (value!.isEmpty) {
          return messageOnEmpty ?? "Empty field is not allowed";
        }
      },
    );
  }
}
