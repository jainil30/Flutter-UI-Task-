// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/catetgory_controller.dart';
import 'package:furniture_app/widgets/categories.dart';
import 'package:furniture_app/widgets/custom_header_row.dart';
import 'package:furniture_app/widgets/home_appbar_widget.dart';
import 'package:furniture_app/widgets/interested_items.dart';
import 'package:furniture_app/widgets/popular_items.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:furniture_app/widgets/special_offers.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

/*Created By: Tushar Jethva

*/
class MyHomeScreen extends StatefulWidget {
  static const String routeName = "/homeScreen";
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final categoryController = Get.put(MyCategoryController());
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(
                double.infinity, getHeight(height: 0.18, context: context)),
            child: const HomeAppBarWidget()),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: getWidth(width: 0.02, context: context)),
                child: MyReusableText(
                    content: "Special Offers",
                    style: theme.textTheme.bodyLarge!
                        .copyWith(fontWeight: FontWeight.w600)),
              ),
              Gap(getHeight(height: 0.02, context: context)),
              const MySpecialOffers(),
              Gap(getHeight(height: 0.02, context: context)),
              const MyCategories(),
              Gap(getHeight(height: 0.02, context: context)),
              MyCustomHeaderRow(
                leftText: "Most Interested",
                rightText: "ViewAll",
                leftStyle: theme.textTheme.bodyLarge!
                    .copyWith(fontWeight: FontWeight.w600),
                rightStyle: theme.textTheme.titleLarge!
                    .copyWith(fontWeight: FontWeight.w400, color: priceColor),
              ),
              Gap(getHeight(height: 0.02, context: context)),
              const MyInterestedItems(),
              Gap(getHeight(height: 0.02, context: context)),
              MyCustomHeaderRow(
                leftText: "Popular",
                rightText: "ViewAll",
                leftStyle: theme.textTheme.bodyLarge!
                    .copyWith(fontWeight: FontWeight.w600),
                rightStyle: theme.textTheme.titleLarge!
                    .copyWith(fontWeight: FontWeight.w400, color: priceColor),
              ),
              Gap(getHeight(height: 0.02, context: context)),
              const MyPopularItems(),
              Gap(getHeight(height: 0.09, context: context)),
            ],
          ),
        ));
  }
}


