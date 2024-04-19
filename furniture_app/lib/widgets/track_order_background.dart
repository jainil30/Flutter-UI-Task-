import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/widgets/track_order_bottomsheet.dart';

import '../common/sizes.dart';
import '../constants/icons.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Background of TrackOrder Screen
 */
class TrackOrderBackground extends StatelessWidget {
  const TrackOrderBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(height: 1, context: context),
      width: getWidth(width: 1, context: context),
      child: Stack(fit: StackFit.expand, children: [
        Image.asset(
          IconsConstants.TRACK_ORDER_BACKGROUND_IMAGE.toString(),
          fit: BoxFit.cover,
          width: getWidth(width: 1, context: context),
          height: getHeight(height: 0.6, context: context),
        ),
        Positioned(
            top: 165,
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
