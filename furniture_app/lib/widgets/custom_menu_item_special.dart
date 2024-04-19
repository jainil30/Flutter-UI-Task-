import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:get/get.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Single Menu Item for menus in the app
 */
class CustomMenuItemSpecial extends StatelessWidget {
  const CustomMenuItemSpecial({
    super.key,
    this.title,
    this.iconPath,
    this.subTitle,
    required this.isSvg,
    this.hasTrailIcon,
  });

  final String? iconPath;
  final String? title;
  final String? subTitle;
  final bool? isSvg;
  final bool? hasTrailIcon;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 0,
      color: Theme.of(context).hoverColor,
      child: InkWell(
        child: ListTile(
          leading: (isSvg!)
              ? Container(
                  width: 70,
                  height: 73,
                  decoration: BoxDecoration(
                      color: theme.cardColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(iconPath!),
                  ))
              : Container(
                  width: 70,
                  height: 73,
                  decoration: BoxDecoration(
                      color: theme.cardColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(iconPath!),
                  ),
                ),
          title: Text(
            title ?? "",
            style: Theme.of(context).textTheme.displaySmall!,
          ),
          subtitle: Text(
            subTitle ?? "",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: greyColor),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: greyColor,
          ),
        ),
        onTap: () {
          Get.snackbar("$title", "$title is clicked",
              duration: Duration(seconds: 2),
              icon: SvgPicture.asset(iconPath!));
        },
      ),
    );
  }
}
