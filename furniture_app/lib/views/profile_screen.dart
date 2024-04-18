import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/views/settings_screen.dart';
import 'package:furniture_app/widgets/icon_container.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../widgets/custom_back_icon_button.dart';
import '../widgets/profile_menu.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Shows User Profile and menu
 */
class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});
  static const String routeName = "/profileScreen";
  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   backgroundColor: Colors.transparent,
        //   // leading: Container(
        //   //   margin: EdgeInsets.only(left: 10, top: 10),
        //   //   child: CustomBackIconButton(
        //   //     icon: Icons.arrow_back,
        //   //     function: Get.back,
        //   //   ),
        //   // ),
        //   centerTitle: true,
        //   title: Text(
        //     "Profile",
        //     style:
        //         Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),
        //   ),
        // ),
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 20),
                  child: MyIconContainer(
                      child: const Icon(Icons.settings),
                      onPressed: () {
                        Navigator.pushNamed(context, SettingsScreen.routeName);
                      }),
                )),
            // Gap(getHeight(height: 0.02, context: context)),
            const CircleAvatar(
              foregroundImage: AssetImage("assets/images/surya_dp.jpg"),
              maxRadius: 50,
            ),
            MyReusableText(
                content: "Surya Bhai",
                style: Theme.of(context).textTheme.displayMedium!),
            MyReusableText(
                content: "surya.bhai@gmail.com",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: greyColor)),
            Container(
                margin: const EdgeInsets.only(
                    top: 10, left: 10, right: 10, bottom: 0),
                // color: Colors.red,
                height: MediaQuery.sizeOf(context).height * 0.53,
                child: ProfileMenu()),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Log out",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: redColor, fontWeight: FontWeight.w500),
                )),
            Gap(getHeight(height: 0.12, context: context))
          ],
        ),
      ),
    ));
  }
}
