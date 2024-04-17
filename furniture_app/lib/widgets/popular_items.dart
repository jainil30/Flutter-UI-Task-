import 'package:flutter/material.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/views/item_details_screen.dart';
import 'package:furniture_app/widgets/custom_popular_one_widget.dart';

class MyPopularItems extends StatelessWidget {
  const MyPopularItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(height: 0.15, context: context),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(interestedItems.length, (index){
         ItemModel popularItemModel = ItemModel.fromJson(popularItems[index]);
          return GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, MyItemDetailsScreen.routeName,arguments: popularItemModel);
            },
            child: MyOnePopularWidget(popularItemModel: popularItemModel,));
        }),
      ),
    );
  }
}
