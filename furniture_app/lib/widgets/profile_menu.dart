import 'package:flutter/material.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/widgets/menu_item.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CustomMenuItem(
          title: profilePageMenu[index]["title"].toString(),
          iconPath: profilePageMenu[index]["icon"].toString(),
        );
      },
      itemCount: profilePageMenu.length,
    );
  }
}
