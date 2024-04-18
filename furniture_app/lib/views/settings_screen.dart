import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_back_icon_button.dart';
import '../widgets/settings_menu.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Settings Screen
 */
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  static const String routeName = "/settingsScreen";

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
          title: Text(
            "Settings",
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
                  child: SettingsMenu()),
            ],
          ),
        ));
  }
}
