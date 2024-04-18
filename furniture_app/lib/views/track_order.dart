import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/custom_back_icon_button.dart';
import 'package:furniture_app/widgets/track_order_background.dart';
import 'package:get/get.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});
  static const String routeName = "/trackOrder";

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: CustomBackIconButton(
          function: Get.back,
          icon: Icons.arrow_back,
        ),
        leadingWidth: 80,
        title: Text(
          "Track Order",
          style: Theme.of(context).textTheme.displayMedium!,
        ),
        centerTitle: true,
        // backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TrackOrderBackground(),
          // GoogleMap(
          //   initialCameraPosition: CameraPosition(
          //     target: LatLng(21.763296031753885, 72.12823742892),
          //     zoom: 12,
          //   ),
          // )
        ],
      ),
    );
  }
}
