/*
  Created By : Jainil Dalwadi
  Purpose : TO Sign In User
 */
import 'package:furniture_app/common/data.dart';
import 'package:get/get.dart';

import '../models/profile_page_menu_item_model.dart';

class ProfilePageMenuItemController extends GetxController {
  List<ProfilePageMenuItemModel> profileMenus =
      <ProfilePageMenuItemModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    profilePageMenu.map((e) => profileMenus
        .add(ProfilePageMenuItemModel(title: e["title"], icon: e["icon"])));
  }
}
