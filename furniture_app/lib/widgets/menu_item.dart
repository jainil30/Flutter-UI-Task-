import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomMenuItem extends StatelessWidget {
  const CustomMenuItem({super.key, this.title, this.iconPath});

  final String? iconPath;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).hoverColor,
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: SvgPicture.asset(iconPath!),
            title: Text(
              title!,
              style: Theme.of(context).textTheme.displaySmall!,
            ),
          ),
        ),
        onTap: () => Get.snackbar("$title", "$title is clicked",
            duration: Duration(seconds: 2), icon: SvgPicture.asset(iconPath!)),
      ),
    );
  }
}
