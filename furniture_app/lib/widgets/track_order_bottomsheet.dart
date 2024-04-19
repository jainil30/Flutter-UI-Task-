import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/track_order_address_widget.dart';
import 'package:furniture_app/widgets/track_order_bottomsheet_driver_info_widget.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : BottomSheet of TrackOrder Screen
 */
class TrackOrderBottomSheet extends StatelessWidget {
  const TrackOrderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    print("Built Bottom Sheet");
    return Container(
      height: getHeight(height: 0.505, context: context),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).hoverColor,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25), topLeft: Radius.circular(25))),
      child: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TrackOrderBottomsheetDriverInfoWidget(
              driverName: "Tushar Jethva",
              driverProfileImagePath:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB9oF0K9m3KZbFrOm1s3GTB57LyEpOX2Rd9jFy91GDrw&s",
              driverVehicleNumber: "AD 4856 AUE",
            ),
            TrackOrderAddressWidget(
                fromShop: "Garmanian Cuisine",
                fromArea: "Houseing State",
                departureTime: "16:40",
                toAddress: "East 58th Street, BDT",
                toArea: "House",
                arrivalTime: "18:08")
          ],
        ),
      ),
    );
  }
}
