import 'package:flutter/material.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/models/interested_item_model.dart';

class MyCartImageWidget extends StatelessWidget {
  const MyCartImageWidget({
    super.key,
    required this.popularItemModel,
  });

  final ItemModel popularItemModel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.all(getHeight(height: 0.007, context: context)),
      height: getHeight(height: 0.1, context: context),
      width: getWidth(width: 0.1, context: context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: theme.cardColor,
      ),
      child: Image.asset(popularItemModel.imageUrl!),
    );
  }
}
