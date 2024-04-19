import 'package:flutter/material.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/controllers/profile_page_menu_item_controller.dart';
import 'package:furniture_app/widgets/menu_item.dart';
import 'package:get/get.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Profile Menu
 */
class ProfileMenu extends GetView<ProfilePageMenuItemController> {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 3),
          child: CustomMenuItem(
            title: profilePageMenu[index]["title"]
                .toString(), // controller.profileMenus[index].title

            iconPath: profilePageMenu[index]["icon"]
                .toString(), //controller.profileMenus[index].icon

            isSvg: true,
          ),
        );
      },
      itemCount: profilePageMenu.length,
    );
  }
}
