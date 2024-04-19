import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../common/colors.dart';
import '../common/sizes.dart';
import '../constants/icons.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Widget that shows driver info in BottomSheet of TrackOrder Screen
 */
class TrackOrderBottomsheetDriverInfoWidget extends StatelessWidget {
  const TrackOrderBottomsheetDriverInfoWidget(
      {super.key,
      this.driverName,
      this.driverVehicleNumber,
      this.driverProfileImagePath});

  final String? driverName;
  final String? driverVehicleNumber;
  final String? driverProfileImagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      width: getWidth(width: 0.8, context: context),
      decoration: BoxDecoration(
        color: Theme.of(context).datePickerTheme.headerBackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(right: 20.0, left: 15, top: 20, bottom: 20),
        child: Row(
          children: [
            CircleAvatar(
              foregroundImage: NetworkImage((driverProfileImagePath!.isEmpty ||
                      driverProfileImagePath == "")
                  ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB9oF0K9m3KZbFrOm1s3GTB57LyEpOX2Rd9jFy91GDrw&s"
                  : driverProfileImagePath!),
              minRadius: 35,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyReusableText(
                      content: (driverName! == "" || driverName!.isEmpty)
                          ? "Driver"
                          : driverName!,
                      style: Theme.of(context).textTheme.displaySmall!),
                  Gap(16),
                  MyReusableText(
                      content: "Drive - $driverVehicleNumber",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: greyColor))
                ],
              ),
            ),
            Spacer(),
            Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(24)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    child:
                        SvgPicture.asset(IconsConstants.CALL_ICON.toString()),
                    onTap: () => Get.snackbar("Calling ",
                        (driverName!.isNotEmpty) ? driverName! : "Driver",
                        icon: SvgPicture.asset(
                            IconsConstants.CALL_ICON.toString())),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
