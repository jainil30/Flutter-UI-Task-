import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';

import '../constants/icons.dart';

class DetailedReviewWidget extends StatelessWidget {
  const DetailedReviewWidget(
      {super.key,
      this.imagePath,
      this.isSvg,
      this.userName,
      this.detailedReview,
      this.isTooMuch});

  final String? imagePath;
  final bool? isSvg;
  final String? userName;
  final String? detailedReview;
  final bool? isTooMuch;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            foregroundImage: NetworkImage((imagePath!.isEmpty)
                ? "https://th.bing.com/th/id/OIP.uFXviv0pQL0EQOCHR3sLWQHaFj?rs=1&pid=ImgDetMain"
                : imagePath!),
            minRadius: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: getWidth(width: 0.25, context: context),
                  child: Wrap(
                    children: [
                      Text(userName!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: true,
                          style: Theme.of(context).textTheme.titleLarge!)
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(IconsConstants.STARS),
                    Text(
                      "16 Minute Ago",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: greyColor),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: getWidth(width: 0.25, context: context),
                  child: Wrap(children: [
                    Text(
                      detailedReview!,
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: greyColor),
                    ),
                  ]),
                ),
                if (isTooMuch!)
                  GestureDetector(
                    child: Text(
                      "Read More",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: primaryColor),
                    ),
                    onTap: () {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Clicked")));
                    },
                  ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
