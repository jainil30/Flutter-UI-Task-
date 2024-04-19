import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/bottom_navigation_controller.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/views/item_details_screen.dart';
import 'package:furniture_app/widgets/all_items_widget.dart';
import 'package:furniture_app/widgets/icon_container.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:get/get.dart';

class MyTotalItems extends StatefulWidget {
  static const routeName = '/totalItems';
  final String appBarName;
  const MyTotalItems({super.key, required this.appBarName});

  @override
  State<MyTotalItems> createState() => _MyTotalItemsState();
}

class _MyTotalItemsState extends State<MyTotalItems> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              Size(double.infinity, getHeight(height: 0.2, context: context)),
          child: Container(
            padding: EdgeInsets.only(
                top: getHeight(
                  height: 0.035,
                  context: context,
                ),
                left: getWidth(width: 0.02, context: context),
                right: getWidth(width: 0.02, context: context)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyIconContainer(
                    child: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                MyReusableText(
                    content: widget.appBarName,
                    style:
                        theme.textTheme.displaySmall!.copyWith(fontSize: 20)),
                MyIconContainer(
                    child: const Icon(Icons.favorite_border_outlined),
                    onPressed: () {}),
              ],
            ),
          )),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: ((context, index) {
          ItemModel itemModel = ItemModel.fromJson(items[index]);
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, MyItemDetailsScreen.routeName,
                  arguments: itemModel);
            },
            child: MyOneAllItemWidget(
              item: itemModel,
              widget: Container(
                  padding:
                      EdgeInsets.all(getHeight(height: 0.01, context: context)),
                  decoration: const BoxDecoration(
                      color: primaryColor, shape: BoxShape.circle),
                  child: SvgPicture.asset("assets/images/shoping_bag.svg")),
            ),
          );
        }),
      ),
    );
  }
}
