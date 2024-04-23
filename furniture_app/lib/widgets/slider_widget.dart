import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/controllers/filter_controller.dart';
import 'package:get/get.dart';

class MySliderWidget extends StatelessWidget {
  const MySliderWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
        final theme = Theme.of(context);
    final filterController = Get.put(MyFilterController());
    return Obx(
      () => RangeSlider(
        values: RangeValues(
            filterController.startRange, filterController.endRange),
        onChanged: (val) {
          filterController.setStartRange = val.start;
          filterController.setEndRange = val.end;
        },
        min: 0,
        max: 3000,
        activeColor: primaryColor,
        inactiveColor: theme.hoverColor,
      ),
    );
  }
}