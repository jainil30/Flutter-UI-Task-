import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/filter_controller.dart';
import 'package:furniture_app/views/all_brands_screen.dart';
import 'package:furniture_app/widgets/custom_button.dart';
import 'package:furniture_app/widgets/custom_header_row.dart';
import 'package:furniture_app/widgets/filter_app_bar.dart';
import 'package:furniture_app/widgets/filter_brand_widget.dart';
import 'package:furniture_app/widgets/filter_color_widget.dart';
import 'package:furniture_app/widgets/filter_cust_review.dart';
import 'package:furniture_app/widgets/slider_widget.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

/*Created By: Tushar Jethva

 */
class MyFilterScreen extends StatefulWidget {
  static const routeName = "/filterScreen";
  const MyFilterScreen({super.key});

  @override
  State<MyFilterScreen> createState() => _MyFilterScreenState();
}

class _MyFilterScreenState extends State<MyFilterScreen> {
  int starIndex = 5;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final filterController = Get.put(MyFilterController());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(double.infinity, getHeight(height: 0.2, context: context)),
        child: const MyFilterAppBarWidget(),
      ),
      body: Column(
        children: [
          Gap(getHeight(height: 0.02, context: context)),
          MyCustomHeaderRow(
              leftText: "Brand",
              rightText: "View all",
              leftStyle: theme.textTheme.displaySmall!.copyWith(fontSize: 20),
              rightStyle:
                  theme.textTheme.titleMedium!.copyWith(color: priceColor),
              onPressedRight: () {
                Navigator.pushNamed(context, MyAllBrands.routeName);
              }),
          Gap(getHeight(height: 0.02, context: context)),
          const AllBrandWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Divider(
              color: theme.hoverColor,
            ),
          ),
          Gap(getHeight(height: 0.02, context: context)),
          MyCustomHeaderRow(
              leftText: "Color",
              rightText: "",
              leftStyle: theme.textTheme.displaySmall!.copyWith(fontSize: 20),
              rightStyle:
                  theme.textTheme.titleMedium!.copyWith(color: priceColor),
              onPressedRight: () {}),
          Gap(getHeight(height: 0.02, context: context)),
          const AllColorWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Divider(
              color: theme.hoverColor,
            ),
          ),
          Gap(getHeight(height: 0.02, context: context)),
          MyCustomHeaderRow(
              leftText: "Price Range",
              rightText: "",
              leftStyle: theme.textTheme.displaySmall!.copyWith(fontSize: 20),
              rightStyle:
                  theme.textTheme.titleMedium!.copyWith(color: priceColor),
              onPressedRight: () {}),
          Gap(getHeight(height: 0.02, context: context)),
          Obx(
            () => MyCustomHeaderRow(
                leftText: "\$${filterController.startRange.toStringAsFixed(2)}",
                rightText: "\$${filterController.endRange.toStringAsFixed(2)}",
                leftStyle: theme.textTheme.titleMedium!.copyWith(fontSize: 14),
                rightStyle: theme.textTheme.titleMedium!.copyWith(fontSize: 14),
                onPressedRight: () {}),
          ),
          const MySliderWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Divider(
              color: theme.hoverColor,
            ),
          ),
          MyCustomHeaderRow(
              leftText: "Customer Review",
              rightText: "",
              leftStyle: theme.textTheme.displaySmall!.copyWith(fontSize: 20),
              rightStyle:
                  theme.textTheme.titleMedium!.copyWith(color: priceColor),
              onPressedRight: () {}),
          const MyCustomerReviewWidget(),
          Gap(getHeight(height: 0.2, context: context)),
          MyCustomButton(buttonName: "Apply Filter", onPressed: (){
            Get.snackbar("Filter", "Filter is applied!");
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
