import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/widgets/track_order_bottomsheet.dart';

import '../constants/icons.dart';

class TrackOrderBackground extends StatelessWidget {
  const TrackOrderBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Image.asset(IconsConstants.TRACK_ORDER_BACKGROUND_IMAGE.toString()),
        Positioned(
            top: 160,
            child: InkWell(
                onTap: () {
                  print("Clicked Route");
                  showBottomSheet(
                    context: context,
                    enableDrag: false,
                    builder: (context) => TrackOrderBottomSheet(),
                  );
                  print("BottomSheet Skiped");
                },
                child: SvgPicture.asset(IconsConstants.MAP_PATH)))
      ]),
    );
  }
}
