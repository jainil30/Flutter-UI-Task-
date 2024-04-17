import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomMenuItem extends StatelessWidget {
  const CustomMenuItem(
      {super.key,
      this.title,
      this.iconPath,
      this.subTitle,
      required this.isSvg});

  final String? iconPath;
  final String? title;
  final String? subTitle;
  final bool? isSvg;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).hoverColor,
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: (isSvg!)
                ? SvgPicture.asset(iconPath!)
                : Container(
                    width: 50, height: 50, child: Image.asset(iconPath!)),
            title: Text(
              title ?? "",
              style: Theme.of(context).textTheme.displaySmall!,
            ),
            subtitle: Text(
              subTitle ?? "",
              style: Theme.of(context).textTheme.titleMedium!,
            ),
          ),
        ),
        onTap: () => Get.snackbar("$title", "$title is clicked",
            duration: Duration(seconds: 2), icon: SvgPicture.asset(iconPath!)),
      ),
    );
  }
}
