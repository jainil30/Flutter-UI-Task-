import 'package:flutter/material.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/widgets/menu_item.dart';

class SettingsMenu extends StatelessWidget {
  const SettingsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 3),
          child: CustomMenuItem(
            title: settingsPageMenu[index]["title"].toString(),
            iconPath: settingsPageMenu[index]["icon"].toString(),
            isSvg: true,
          ),
        );
      },
      itemCount: settingsPageMenu.length,
    );
  }
}
