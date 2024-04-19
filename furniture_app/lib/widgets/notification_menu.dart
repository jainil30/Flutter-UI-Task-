import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/controllers/notification_menu_controller.dart';
import 'package:get/get.dart';

import '../constants/icons.dart';
import 'custom_menu_item_special.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Notification Menu
 */
class NotificationMenu extends GetView<NotificationMenuController> {
  const NotificationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemBuilder: (context, index) {
          print("Title : ${notificationPageMenu[index]["title"].toString()}");
          print(
              "Products : ${notificationPageMenu[index]["products"].toString()}");
          print("Icons : ${notificationPageMenu[index]["icon"].toString()}");

          return Slidable(
            closeOnScroll: true,
            endActionPane: ActionPane(
              motion: ScrollMotion(),
              dragDismissible: false,
              extentRatio: 0.3,
              key: Key(controller.notifications[index].title.toString()),
              dismissible: DismissiblePane(
                onDismissed: () {},
              ),
              children: [
                Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context).hoverColor),
                  child: IconButton(
                    onPressed: () {
                      controller.notifications
                          .remove(controller.notifications[index]);
                    },
                    icon: SvgPicture.asset(
                      IconsConstants.TRASH_ICON,
                    ),
                  ),
                ),
              ],
            ),
            child: CustomMenuItemSpecial(
              title: controller.notifications[index].title.toString(),
              subTitle: controller.notifications[index].subtitle.toString(),
              iconPath: controller.notifications[index].icon.toString(),
              isSvg: false,
              hasTrailIcon: false,
            ),
          );

          //   Dismissible(
          //   key: Key(controller.notifications[index].title.toString()),
          //   direction: DismissDirection.endToStart,
          //   background: SizedBox(),
          //   secondaryBackground: Align(
          //     alignment: Alignment.centerRight,
          //     child: Container(
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(30),
          //           color: Theme.of(context).hoverColor),
          //       child: IconButton(
          //         onPressed: () {},
          //         icon: SvgPicture.asset(
          //           IconsConstants.TRASH_ICON,
          //         ),
          //       ),
          //     ),
          //   ),
          //   behavior: HitTestBehavior.opaque,
          //   onDismissed: (direction) {
          //     // controller.notifications[index].isDismissed = true;
          //     // controller.notifications[index].title = "true";
          //     controller.notifications.remove(controller.notifications[index]);
          //   },
          //   // dismissThresholds: {Threshold()},
          //   child: CustomMenuItemSpecial(
          //     title: controller.notifications[index].title.toString(),
          //     subTitle: controller.notifications[index].subtitle.toString(),
          //     iconPath: controller.notifications[index].icon.toString(),
          //     isSvg: false,
          //   ),
          // );
        },
        itemCount: controller.notifications.length,
      ),
    );
  }
}
