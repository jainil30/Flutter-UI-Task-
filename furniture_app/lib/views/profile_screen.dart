import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/views/sign_in_screen.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  String? email;
  String? name;
  // String? iconPath;
  bool? isOnline;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
/* When saved in shared preference
           preferences.setString(
                "email", emailController.value.text.toString());
            preferences.setString("name", user.fullName);
            preferences.setBool("isOnline", user.isOnline);

 */
    getSharedPreference();
  }

  void getSharedPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    email = preferences.getString("email").toString();
    name = preferences.getString("name").toString();
    isOnline = preferences.getBool("isOnline");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leadingWidth: 80,
        leading: Container(
          margin: EdgeInsets.only(left: 34, top: 10),
          child: CustomBackIconButton(
            icon: Icons.arrow_back,
            function: Get.back,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, SignInScreen.routeName, (route) => false);
                },
                child: Text(
                  "Log out",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: redColor, fontWeight: FontWeight.w500),
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                foregroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB9oF0K9m3KZbFrOm1s3GTB57LyEpOX2Rd9jFy91GDrw&s"),
                maxRadius: 50,
              ),
              Gap(12),
              MyReusableText(
                  content: (name != null) ? name! : "Jainil Dalwadi",
                  style: Theme.of(context).textTheme.displayMedium!),
              Gap(5),
              MyReusableText(
                  content:
                      (email != null) ? email! : "jainil.dalwadi@gmail.com",
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
              SizedBox(
                height: 300,
              )
            ],
          ),
        ),
      ),
    );
  }
}
