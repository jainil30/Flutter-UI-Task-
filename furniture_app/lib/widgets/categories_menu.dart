import 'package:flutter/material.dart';
import 'package:furniture_app/common/data.dart';

import 'custom_menu_item_special.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Categories Menu
 */
class CategoriesMenu extends StatelessWidget {
  const CategoriesMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        print("Title : ${categorisPageMenu[index]["title"].toString()}");
        print("Products : ${categorisPageMenu[index]["products"].toString()}");
        print("Icons : ${categorisPageMenu[index]["icon"].toString()}");

        return CustomMenuItemSpecial(
          title: categorisPageMenu[index]["title"].toString(),
          subTitle: categorisPageMenu[index]["products"].toString(),
          iconPath: categorisPageMenu[index]["icon"].toString(),
          isSvg: false,
        );
      },
      itemCount: categorisPageMenu.length,
    );
  }
}
