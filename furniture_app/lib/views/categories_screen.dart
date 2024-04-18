import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/widgets/categories_menu.dart';
import 'package:get/get.dart';

import '../constants/icons.dart';
import '../widgets/custom_back_icon_button.dart';

/*
  Created By : Jainil Dalwadi
  Purpose : Shows All Categories
 */
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

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
          actions: [
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).hoverColor),
                margin: EdgeInsets.only(right: 20, top: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: SvgPicture.asset(
                      IconsConstants.BAG_ICON,
                      // color: Theme.of(context).appBarTheme.shadowColor,
                      // colorFilter: ColorFilter.mode(
                      //     Theme.of(context).appBarTheme.shadowColor!,
                      //     BlendMode.difference),
                    ),
                    onTap: () =>
                        Get.snackbar("Products", "Redirecting to products",
                            icon: SvgPicture.asset(
                              IconsConstants.BAG_ICON,
                            )),
                  ),
                ))
          ],
          title: Text(
            "Categories",
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
                  child: CategoriesMenu()),
            ],
          ),
        ));
  }
}
