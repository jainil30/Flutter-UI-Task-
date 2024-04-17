import 'package:flutter/material.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/widgets/one_special_offer.dart';

class MySpecialOffers extends StatelessWidget {
  const MySpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(height: 0.2, context: context),
      margin: EdgeInsets.only(left: getWidth(width: 0.02, context: context)),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(2, (index) {
          final specialOfferData = specialOffersData[index];
          return MyOneSpecialOffer(specialOfferData: specialOfferData);
        }),
      ),
    );
  }
}