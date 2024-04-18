import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/controllers/notification_menu_controller.dart';
import 'package:furniture_app/widgets/notification_menu.dart';
import 'package:get/get.dart';

import '../widgets/custom_back_icon_button.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Shows all recent notifications
 */
class NotificationScreen extends GetView<NotificationMenuController> {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          leading: Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            child: CustomBackIconButton(
              icon: Icons.arrow_back,
              function: Get.back,
            ),
          ),
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.only(
                right: 25,
              ),
              child: InkWell(
                child: Text(
                  'Clear All',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: greyColor),
                ),
                onTap: () {
                  if (controller.notifications.length > 0) {
                    Get.snackbar("Notifications", "Marked as read",
                        icon: Icon(Icons.done_outline_outlined));
                    controller.notifications
                        .removeRange(0, controller.notifications.length);
                  } else {
                    Get.snackbar("Notifications", "No notification to clear",
                        icon: Icon(Icons.sms_failed));
                  }
                },
              ),
            ),
          ],
          title: Text(
            "Notification",
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin:
                      EdgeInsets.only(top: 10, left: 24, right: 24, bottom: 14),
                  // color: Colors.red,
                  height: MediaQuery.sizeOf(context).height * 0.6,
                  child: NotificationMenu()),
            ],
          ),
        ));
  }
}
