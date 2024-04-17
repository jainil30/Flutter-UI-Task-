import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/models/interested_item_model.dart';
import 'package:furniture_app/widgets/icon_container.dart';
import 'package:furniture_app/widgets/item_details_bottom_bar.dart';
import 'package:furniture_app/widgets/item_details_widget.dart';


/*Created By: Tushar Jethva

 */
class MyItemDetailsScreen extends StatelessWidget {
  static const routeName = "/detailsScreen";
  final ItemModel item;
  const MyItemDetailsScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(double.infinity, getHeight(height: 0.1, context: context)),
        child: Container(
          margin: EdgeInsets.only(
              top: getHeight(
                height: 0.04,
                context: context,
              ),
              left: getWidth(width: 0.02, context: context),
              right: getWidth(width: 0.02, context: context),
              bottom: getHeight(height: 0.02, context: context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyIconContainer(
                child: const Icon(Icons.arrow_back_rounded),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
               MyIconContainer(
                child: const Icon(Icons.favorite_outline),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: MyItemDetailsWidget(item: item, theme: theme),
      ),
      bottomNavigationBar:  MyItemDetailsBottomBar(item: item,),
    );
  }
}
