import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/models/NotificationModel.dart';
import 'package:get/get.dart';

class NotificationMenuController extends GetxController {
  var notifications = <NotificationModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllNotifications();
  }

  void getAllNotifications() {
    for (var notification in notificationPageMenu) {
      notifications.add(NotificationModel(
          title: notification["title"].toString(),
          subtitle: notification["subtitle"].toString(),
          icon: notification["icon"].toString(),
          isDismissed:
              (notification["isDismissed"] == "false") ? false : true));
    }
  }
}
