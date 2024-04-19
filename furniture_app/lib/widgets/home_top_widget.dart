import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/controllers/bottom_navigation_controller.dart';
import 'package:furniture_app/views/notification_screen.dart';
import 'package:furniture_app/widgets/icon_container.dart';
import 'package:furniture_app/widgets/reusable_text.dart';
import 'package:furniture_app/widgets/search_widget.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

/*Created By: Tushar Jethva
  used_for: custom app bar 
  screen: home_screen
 */
class MyHomeTopWidget extends StatelessWidget {
  const MyHomeTopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bottomBarController = Get.put(BottomNavigationController());
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          leading: GestureDetector(
            onTap: () {
              bottomBarController.setBottomIndex = 3;
            },
            child: const CircleAvatar(
              radius: 50,
              backgroundColor: greyColor,
              backgroundImage: AssetImage("assets/images/surya_dp.jpg"),
            ),
          ),
          horizontalTitleGap: 0.0,
          title: MyReusableText(
              content: "Welcome",
              style: theme.textTheme.titleMedium!.copyWith(color: greyColor)),
          subtitle: MyReusableText(
            content: "Tushar Jethva",
            style: theme.textTheme.bodyLarge!,
          ),
          trailing: MyIconContainer(
            child: Image.asset(
              "assets/images/bell_icon.png",
              color: theme.iconTheme.color,
            ),
            onPressed: () {
              Navigator.pushNamed(context, NotificationScreen.routeName);
            },
          ),
        ),
        Gap(getHeight(height: 0.02, context: context)),
        const MySearchWidget()
      ],
    );
  }
}
