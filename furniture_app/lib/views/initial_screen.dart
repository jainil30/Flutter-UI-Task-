import 'package:flutter/material.dart';
import 'package:furniture_app/common/data.dart';
import 'package:furniture_app/common/sizes.dart';
import 'package:furniture_app/constants/strings.dart';
import 'package:furniture_app/controllers/initial_page_controller.dart';
import 'package:furniture_app/views/sign_in_screen.dart';
import 'package:furniture_app/widgets/custom_button.dart';
import 'package:furniture_app/widgets/init_image_text_widget.dart';
import 'package:furniture_app/widgets/init_row.dart';
import 'package:furniture_app/widgets/one_dot_widget.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

//Create By: Tushar Jethva
class MyInitialScreen extends StatefulWidget {
  static const String routeName = "/init";
  const MyInitialScreen({super.key});
  @override
  State<MyInitialScreen> createState() => _MyInitialScreenState();
}

class _MyInitialScreenState extends State<MyInitialScreen> {
  final initialPageController = Get.put(InitialPageController());
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void changePage(int val) {
    initialPageController.setInitialPage = val;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Obx(
        () => Column(
          children: [
            Gap(getHeight(height: 0.2, context: context)),
            SizedBox(
              height: getHeight(height: 0.6, context: context),
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: changePage,
                itemCount: initData.length,
                itemBuilder: (context, index) {
                  var data = initData[index];
                  return MyInitImageText(data: data, theme: theme);
                },
              ),
            ),
            const MyOneDotWidget(),
            Gap(getHeight(height: 0.07, context: context)),
            initialPageController.initialPage == 2
                ? MyCustomButton(
                    buttonName: StringConstants.INIT_BUTTON_TEXT,
                    onPressed: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                  )
                : Padding(
                    padding: EdgeInsets.only(
                        left: getWidth(width: 0.023, context: context),
                        bottom: getHeight(height: 0.02, context: context)),
                    child: MyInitRow(
                      content: "Skip",
                      onContentPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context,
                            MyBottomNavigation.routeName, (route) => false);
                      },
                      onButtonPressed: () {
                        int val = initialPageController.initialPage;
                        changePage(val + 1);
                        _pageController
                            .jumpToPage(initialPageController.initialPage);
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
