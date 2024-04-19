import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/widgets/categories.dart';
import 'package:furniture_app/widgets/custom_header_row.dart';
import 'package:furniture_app/widgets/favorite_one_widget.dart';
import 'package:gap/gap.dart';

import '../widgets/search_app_bar.dart';

/*Created By: Tushar Jethva

 */
class MySearchScreen extends StatefulWidget {
  static const String routeName = '/searchScreen';
  const MySearchScreen({super.key});

  @override
  State<MySearchScreen> createState() => _MySearchScreenState();
}

class _MySearchScreenState extends State<MySearchScreen> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              Size(double.infinity, getHeight(height: 0.1, context: context)),
          child: MySearchAppBar()),
      body: Column(
        children: [
          MyCustomHeaderRow(
            leftText: "Recently Searched",
            rightText: "Clear",
            leftStyle: theme.textTheme.displaySmall!
                .copyWith(fontSize: 20, fontWeight: FontWeight.w500),
            rightStyle: theme.textTheme.displaySmall!.copyWith(
                fontSize: 14, fontWeight: FontWeight.w400, color: greyColor),
            onPressedRight: () {},
          ),
          Gap(getHeight(height: 0.02, context: context)),
          const MyCategories(),
          Gap(getHeight(height: 0.05, context: context)),
          Expanded(
              child:Padding(
                padding:  EdgeInsets.only(left:getWidth(width: 0.025, context: context)),
                child: GridView.builder(
                        itemCount: items.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent:
                                getHeight(height: 0.3, context: context)),
                        itemBuilder: (context, index) {
                          ItemModel item = ItemModel.fromJson(items[index]);
                          return MyFavouriteOneWidget(item: item);
                        }),
              ))
        ],
      ),
    );
  }
}
