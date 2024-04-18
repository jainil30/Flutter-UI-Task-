import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/constants/strings.dart';
import 'package:furniture_app/controllers/bottom_navigation_controller.dart';
import 'package:furniture_app/views/favourite_screen.dart';
import 'package:furniture_app/views/home_screen.dart';
import 'package:furniture_app/views/profile_screen.dart';
import 'package:furniture_app/views/shopping_screen.dart';
import 'package:furniture_app/widgets/eye_container_widget.dart';
import 'package:get/get.dart';

/*Created By: Tushar Jethva

*/
class MyBottomNavigation extends StatelessWidget {
  static const String routeName = "/bottomNav";
  const MyBottomNavigation({super.key});

  final List<Widget> screens = const [
    MyHomeScreen(),
    MyFavouriteScreen(),
    MyShoppingScreen(),
    MyProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bottomBarController = Get.put(BottomNavigationController());
    return Scaffold(
      body: Obx(
        () => Stack(
          children: [
            screens[bottomBarController.bottomIndex],
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: theme.scaffoldBackgroundColor,
                  height: getHeight(height: 0.08, context: context),
                  child: Obx(
                    () => BottomNavigationBar(
                      elevation: 0,
                      onTap: (value) {
                        bottomBarController.setBottomIndex = value;
                      },
                      currentIndex: bottomBarController.bottomIndex,
                      items: const [
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), label: "Home"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.favorite_border),
                            label: "Favourite"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.shopping_cart_outlined),
                            label: "Shopping"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.person), label: "Profile"),
                      ],
                    ),
                  ),
                )),
            const MyEyeContainer(),
          ],
        ),
      ),
    );
  }
}
