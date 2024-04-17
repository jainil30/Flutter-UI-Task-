import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:get/get.dart';

import '../widgets/custom_back_icon_button.dart';
import '../widgets/profile_menu.dart';

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
            "Profile",
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                foregroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB9oF0K9m3KZbFrOm1s3GTB57LyEpOX2Rd9jFy91GDrw&s"),
                maxRadius: 50,
              ),
              MyReusableText(
                  content: "Jainil Dalwadi",
                  style: Theme.of(context).textTheme.displayMedium!),
              MyReusableText(
                  content: "jainil.dalwadi@gmail.com",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: greyColor)),
              Container(
                  margin:
                      EdgeInsets.only(top: 10, left: 24, right: 24, bottom: 14),
                  // color: Colors.red,
                  height: MediaQuery.sizeOf(context).height * 0.6,
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
            ],
          ),
        ));
  }
}
